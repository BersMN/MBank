import 'package:flutter/material.dart';

class SentSuccessScreen extends StatefulWidget {
  const SentSuccessScreen({super.key});

  @override
  State<SentSuccessScreen> createState() => _SentSuccessScreenState();
}

class _SentSuccessScreenState extends State<SentSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
