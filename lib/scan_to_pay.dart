import 'package:flutter/material.dart';

class ScanToPayScreen extends StatefulWidget {
  const ScanToPayScreen({super.key});

  @override
  State<ScanToPayScreen> createState() => _ScanToPayScreenState();
}

class _ScanToPayScreenState extends State<ScanToPayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF304FFE),
      appBar: AppBar(
        backgroundColor: Color(0xFF304FFE),
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * .5,
                height: MediaQuery.of(context).size.width * .5,
                color: Colors.grey.shade200,
                margin: const EdgeInsets.symmetric(vertical: 48),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Scan a QR to Pay",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                "Hold the code inside the frame, it will be scanned automatically",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.flash_on, color: Colors.white),
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blue.withAlpha(100),
                        width: 6,
                      ),
                    ),
                  ),
                  Icon(Icons.rotate_90_degrees_cw_rounded, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
