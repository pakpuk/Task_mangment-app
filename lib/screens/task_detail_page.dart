import 'package:flutter/material.dart';
import 'package:taskmanagment_app/core/appcolor.dart';
import 'package:taskmanagment_app/models/Task_model.dart';

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen(List<TaskModel> taskList, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.kblackColor,
      body: SafeArea(
          child: CustomScrollView(
        slivers: [],
      )),
    );
  }
}
