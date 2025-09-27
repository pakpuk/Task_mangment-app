import 'package:flutter/material.dart';

class Buttonwidget extends StatelessWidget {
  final Color Backgroundcolor;
  final String text;
  final Color TextColor;
  const Buttonwidget(
      {super.key,
      required this.Backgroundcolor,
      required this.text,
      required this.TextColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            color: Backgroundcolor, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(text, style: TextStyle(color: TextColor)),
        ));
  }
}
