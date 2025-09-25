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
      height: MediaQuery.of(context).size.height / 14,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Backgroundcolor, borderRadius: BorderRadius.circular(40)),
      child: Center(
          child: Text(text, style: TextStyle(color: TextColor, fontSize: 24))),
    );
  }
}
