import 'package:flutter/material.dart';
import 'onboarding_screen.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'verify_screen.dart';
import 'homepage_screen.dart';
import 'send_screen.dart';
import 'account_setup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoinPay',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        textTheme: ThemeData.light().textTheme.apply(
          bodyColor: Color(0xFF2A2A2A),
          displayColor: Color(0xFF2A2A2A),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Color(0xFF304FFE),
            minimumSize: Size(double.infinity, 56),
            fixedSize: Size(double.infinity, 56),
            maximumSize: Size(double.infinity, 56),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: EdgeInsets.zero,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/onboarding',
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
        '/homepage': (context) => HomepageScreen(),
        '/send': (context) => SendScreen(),
        '/accountsetup': (context) => AccountSetupScreen(),
        '/registration': (context) => RegistrationScreen(),
        '/registration/verify': (context) => VerifyScreen(),
      },
    );
  }
}
