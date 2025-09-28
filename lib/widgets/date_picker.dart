import 'package:flutter/material.dart';

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
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){},
              child: Container(
                child: Column(
                  children: [],
                ),
              ),
            )
          },
          separatorBuilder:(_ ,SizedBox){

          } ,
          itemCount: weekList.length),
    );
  }
}
