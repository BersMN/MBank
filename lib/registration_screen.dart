import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset('assets/Registration.jpg', height: 260),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'Create your Coinpay account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    ),
                    Text(
                      "Coinpay is a powerful tool that allows you to easily send, receive, and track all your transactions.",
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 32, 0, 16),
                      child: TextButton(
                        onPressed:
                            () => Navigator.pushNamed(
                              context,
                              '/registration/create',
                            ),
                        child: Text('Sign up'),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pushNamed(context, '/login'),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Color(0xFF304FFE), width: 1),
                      ),
                      child: Text(
                        'Log in',
                        style: TextStyle(color: Color(0xFF304FFE)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Text(
                        "By continuing you accept our",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
                            await launchUrl(
                              Uri.parse('https://m-bank.mn/en/privacy-policy'),
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          child: Text(
                            "Terms of Service",
                            style: TextStyle(
                              color: Color(0xFF304FFE),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        Text(
                          " and ",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        InkWell(
                          onTap: () async {
                            await launchUrl(
                              Uri.parse('https://m-bank.mn/en/privacy-policy'),
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          child: Text(
                            "Privacy Policy",
                            style: TextStyle(
                              color: Color(0xFF304FFE),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
