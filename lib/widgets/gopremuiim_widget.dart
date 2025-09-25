import 'package:flutter/material.dart';
import 'package:taskmanagment_app/core/appcolor.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: Appcolor.kblackColor,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              )),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Appcolor.kBlueDark),
              )
            ],
          ),
        ),
      ],
    );
  }
}
