import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  const CustomFlatButton(
      {super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed();
      },
      child: Text(
        label,
        style: const TextStyle(
            fontSize: 30,
            height: 1,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
