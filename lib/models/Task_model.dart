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
  bool? islast;
  TaskModel(
      {this.iconData,
      this.backgroundcolor,
      this.btncolor,
      this.done,
      this.iconcolor,
      this.left,
      this.title,
      this.islast = false});

  static List<TaskModel> generateTask = [
    TaskModel(
      iconData: Icons.person_rounded,
      title: 'personal',
      backgroundcolor: Appcolor.kYellewLight,
      btncolor: Appcolor.kkYellew,
      iconcolor: Appcolor.kYellewDark,
      done: 3,
      left: 1,
    ),
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
    TaskModel(islast: true)
  ];
}
