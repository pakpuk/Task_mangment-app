import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:taskmanagment_app/core/appcolor.dart';

class BuiladdtaskWidget extends StatelessWidget {
  const BuiladdtaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(20),
      dashPattern: const [10, 10],
      strokeWidth: 2,
      color: Appcolor.kgrey,
      child: const Center(
        child: Text(
          ' + Add ',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
