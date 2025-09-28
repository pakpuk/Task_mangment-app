import 'package:flutter/material.dart';
import 'package:taskmanagment_app/core/appcolor.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final weekList = [24, 25, 26, 27, 28, 29, 30];
  final dayList = ["Sun", "Mon", "Thu", "Wed", "Tue", "Fri", "Sut"];
  var isSelected = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      )),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  isSelected == index;
                });
              },
              child: Container(
                child: Column(
                  children: [
                    Text(
                      "${weekList[index]}",
                      style: TextStyle(
                        color: isSelected == index
                            ? Appcolor.kblackColor
                            : Appcolor.kgrey,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${dayList[index]}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isSelected == index
                            ? Appcolor.kblackColor
                            : Appcolor.kgrey,
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (_, index) {
            return const SizedBox(
              width: 5,
            );
          },
          itemCount: weekList.length),
    );
  }
}
