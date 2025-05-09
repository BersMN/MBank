import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

mixin NavigationMixin {
  final PublishSubject<String> _navigationSubject = PublishSubject<String>();

  Stream<String> get navigationStream => _navigationSubject.stream;

  void navigateTo(String route) {
    _navigationSubject.add(route);
  }

  void dispose() {
    _navigationSubject.close();
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with NavigationMixin {
  int currentPage = 0;
  final PageController _pageController = PageController();

  final List<Map<String, String>> onboardingData = [
    {
      'title': 'Trusted by millions of people, part of one part',
      'image': 'assets/Trust.png',
    },
    {
      'title': 'Spend money abroad, and track your expense',
      'image': 'assets/Send money abroad.png',
    },
    {
      'title': 'Receive Money From Anywhere in The World',
      'image': 'assets/Receive Money.png',
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: _pageController,
          itemCount: onboardingData.length,
          onPageChanged: (index) {
            setState(() => currentPage = index);
          },
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(onboardingData[index]['image']!, height: 260),
                  SizedBox(height: 20),
                  Text(
                    onboardingData[index]['title']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onboardingData.length,
                      (i) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 3.0),
                        width: currentPage == i ? 16.0 : 37.0,
                        height: 8.0,
                        decoration: BoxDecoration(
                          color:
                              currentPage == i
                                  ? Color(0xFF304FFE)
                                  : Color(0xFFD0D0D0),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(19),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      if (currentPage == onboardingData.length - 1) {
                        Navigator.pushNamed(context, '/registration');
                      } else {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      }
                    },
                    style: TextButton.styleFrom(),
                    child: Text('Next'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
