import 'package:flutter/material.dart';

class NotFoundScreen extends StatefulWidget {
  const NotFoundScreen({super.key});

  @override
  State<NotFoundScreen> createState() => _NotFoundScreenState();
}

class _NotFoundScreenState extends State<NotFoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset(
                'assets/notfound.png',
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 40),
            Text(
              "ERROR 404",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "Page Not Found",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                "Oops! It looks like the page you're looking for doesn't exist or has been moved. Please try again or go back to the home page.",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 32),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/homepage'),
              child: Text("Back to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
