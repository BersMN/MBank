import 'package:flutter/material.dart';
import 'package:mbank/create_account.dart';
import 'package:mbank/not_found_screen.dart';
import 'package:mbank/scan_to_pay.dart';
import 'package:mbank/select_purpose.dart';
import 'package:mbank/select_purpose2.dart';
import 'package:mbank/select_purpose3.dart';
import 'package:mbank/sent_success.dart';
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
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Color(0xFF304FFE),
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
        '/registration/create': (context) => CreateAccountScreen(),
        '/selectpurpose': (context) => SelectPurpose(),
        '/selectpurpose2': (context) => SelectPurpose2(),
        '/selectpurpose3': (context) => SelectPurpose3(),
        '/scantopay': (context) => ScanToPayScreen(),
        '/sentsuccess': (context) => SentSuccessScreen(),
        '/notfound': (context) => NotFoundScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/registration/verify') {
          final args = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) {
              return VerifyScreen(args);
            },
          );
        }
        // fallback if needed
        return null;
      },
    );
  }
}
