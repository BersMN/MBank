// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class RegistrationBarWidget extends StatelessWidget {
  RegistrationBarWidget(this.width, {super.key});
  double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: 2, width: double.infinity),
        Container(height: 2, width: width, color: Color(0xFF304FFE)),
      ],
    );
  }
}
