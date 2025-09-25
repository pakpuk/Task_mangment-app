import 'package:flutter/material.dart';
import 'package:taskmanagment_app/core/appcolor.dart';
import 'package:taskmanagment_app/core/textmanager.dart';

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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[800]),
                  child: const Center(
                    child: Icon(
                      Icons.star,
                      color: Appcolor.kwhite,
                      size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  const Text(
                    Textmanager.gopremuim,
                    style: TextStyle(
                      color: Appcolor.kwhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    Textmanager.premuimdisc,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
            bottom: 15,
            right: 15,
            child: Container(
            
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_forward,
                  color: Appcolor.kwhite,
                ),
              ),
            ))
      ],
    );
  }
}
