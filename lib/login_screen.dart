import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Log in to CoinPay',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Enter your registered mobile number to log in.',
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
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                        _obscureText ? Icons.visibility_off : Icons.visibility,
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
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(color: Color(0xFF304FFE)),
                  ),
                ),
              ),
              Spacer(),
              TextButton(
                onPressed:
                    () =>
                        isButtonEnabled
                            ? Navigator.pushNamed(context, '/homepage')
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
                child: Text('Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
