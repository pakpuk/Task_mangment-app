import 'package:flutter/material.dart';
import 'package:taskmanagment_app/core/appcolor.dart';

class TaskModel {
  IconData? iconData;
  Color? backgroundcolor;
  Color? btncolor;
  Color? iconcolor;
  String? title;
  num? left;
  num? done;
  List<Map<String, dynamic>>? description;
  bool? islast;
  TaskModel(
      {this.iconData,
      this.backgroundcolor,
      this.btncolor,
      this.done,
      this.iconcolor,
      this.left,
      this.title,
      this.description,
      this.islast = false});

  static List<TaskModel> generateTask() {
    return [
      TaskModel(
          iconData: Icons.person_rounded,
          title: 'personal',
          backgroundcolor: Appcolor.kYellewLight,
          btncolor: Appcolor.kkYellew,
          iconcolor: Appcolor.kYellewDark,
          done: 3,
          left: 1,
          description: [
            {
              'time': '9:00 am',
              'title': 'Go fo a walk',
              'slot': '9:00 am - 10:00 am',
              'tlcolor': Appcolor.kRedDark,
              'bgcolor': Appcolor.kRedLight
            }
          ]),
      TaskModel(
        iconData: Icons.cases_rounded,
        title: 'work',
        backgroundcolor: Appcolor.kRedLight,
        btncolor: Appcolor.kRed,
        iconcolor: Appcolor.kRedDark,
        done: 0,
        left: 0,
      ),
      TaskModel(
        iconData: Icons.person_outline,
        title: 'personal',
        backgroundcolor: Appcolor.kBlueLight,
        btncolor: Appcolor.kBlue,
        iconcolor: Appcolor.kBlueDark,
        done: 0,
        left: 0,
      ),
      TaskModel(islast: true),
    ];
  }
}
