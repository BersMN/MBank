import 'package:flutter/material.dart';

// 🔹 Define a mixin
mixin Logger {
  void log(String message) {
    debugPrint('LOG: $message');
  }
}

// 🔹 Create a class that uses the mixin
class MyHelper with Logger {
  void doSomething() {
    log('Doing something useful...');
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final helper = MyHelper();

  @override
  Widget build(BuildContext context) {
    helper.doSomething(); // Logs to console

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Mixin Demo')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              helper.log("Button pressed!");
            },
            child: Text("Click Me"),
          ),
        ),
      ),
    );
  }
}
