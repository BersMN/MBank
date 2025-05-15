// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:mbank/registration_bar_widget.dart';

class VerifyScreen extends StatefulWidget {
  VerifyScreen(this.phoneNumber, {super.key});
  String phoneNumber;

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  String otpCode = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Confirm your phone',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('We send 6 digits code to +976 ${widget.phoneNumber}'),
                  SizedBox(
                    height: 100,
                    child: OtpTextField(
                      numberOfFields: 6,
                      borderColor: Color(0xFF512DA8),
                      focusedBorderColor: Color(0xFF304FFE),
                      clearText: false,
                      textStyle: TextStyle(color: Color(0xFF304FFE)),
                      handleControllers: (controllers) {
                        otpCode =
                            controllers.map((ctrl) => ctrl?.text ?? "").join();
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          setState(() {});
                        });
                      },
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Didn\'t get a code?',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor:
                          otpCode.length < 6
                              ? Colors.grey.shade400
                              : Color(0xFF304FFE),
                    ),
                    onPressed:
                        () =>
                            otpCode.length < 6
                                ? null
                                : Navigator.pushNamed(context, '/accountsetup'),
                    child: Text("Verify Your Number"),
                  ),
                ],
              ),
            ),
            RegistrationBarWidget(MediaQuery.of(context).size.width / 6 * 2),
          ],
        ),
      ),
    );
  }
}
