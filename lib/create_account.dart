import 'package:flutter/material.dart';
import 'package:mbank/registration_bar_widget.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool _obscureText = true;
  final TextEditingController controllerPhoneNumber = TextEditingController(),
      controllerPassword = TextEditingController();

  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    controllerPhoneNumber.addListener(_checkFields);
    controllerPassword.addListener(_checkFields);
  }

  void _checkFields() {
    setState(() {
      isButtonEnabled =
          controllerPhoneNumber.text.isNotEmpty &&
          controllerPassword.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RegistrationBarWidget(MediaQuery.of(context).size.width / 6),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Create an Account',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Enter your mobile number to verify your account',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  Text("Phone"),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            width: 72,
                            height: 50,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Text("🇲🇳 +976"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width - 112,
                        child: TextField(
                          controller: controllerPhoneNumber,
                          maxLength: 8,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Mobile Number',
                            labelStyle: TextStyle(color: Colors.grey.shade400),
                            counterText: "",
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text("Password"),
                  SizedBox(height: 8),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      controller: controllerPassword,
                      obscureText: _obscureText,
                      autocorrect: false,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        labelText: '••••••••',
                        labelStyle: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 32,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        prefixIcon: Icon(Icons.lock_outline),
                        prefixIconColor: Colors.grey.shade400,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey.shade400,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed:
                    () =>
                        isButtonEnabled
                            ? showDialog(
                              context: context,
                              builder:
                                  (context) => Dialog(
                                    backgroundColor: Colors.white,
                                    insetPadding: EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                    ),
                                    alignment: Alignment.center,
                                    child: IntrinsicHeight(
                                      child: Padding(
                                        padding: const EdgeInsets.all(32.0),
                                        child: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: InkWell(
                                                onTap:
                                                    () =>
                                                        Navigator.pop(context),
                                                child: Icon(
                                                  Icons.close_rounded,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 16.0,
                                              ),
                                              child: Image.asset(
                                                'assets/dialog.png',
                                                height: 140,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Text(
                                              'Verify your phone number before we send the code',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text('Is this correct? '),
                                                Text(
                                                  controllerPhoneNumber.text,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                            TextButton(
                                              onPressed:
                                                  () => Navigator.pushNamed(
                                                    context,
                                                    '/registration/verify',
                                                    arguments:
                                                        controllerPhoneNumber
                                                            .text,
                                                  ),
                                              child: Text('Yes'),
                                            ),
                                            SizedBox(height: 10),
                                            TextButton(
                                              onPressed:
                                                  () => Navigator.pop(context),
                                              style: TextButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                side: BorderSide(
                                                  color: Color(0xFF304FFE),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Text(
                                                'No',
                                                style: TextStyle(
                                                  color: Color(0xFF304FFE),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                            )
                            : null,
                style: TextButton.styleFrom(
                  backgroundColor:
                      isButtonEnabled
                          ? Color(0xFF304FFE)
                          : Colors.grey.shade400,
                  overlayColor:
                      isButtonEnabled ? Colors.blue : Colors.transparent,
                  splashFactory:
                      isButtonEnabled
                          ? InkSplash.splashFactory
                          : NoSplash.splashFactory,
                ),
                child: Text('Sign Up'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
