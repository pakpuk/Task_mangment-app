import 'package:flutter/material.dart';
import 'package:taskmanagment_app/core/appcolor.dart';
import 'package:taskmanagment_app/models/Task_model.dart';
import 'package:taskmanagment_app/widgets/date_picker.dart';
import 'package:taskmanagment_app/widgets/sliverr_appbar_widget.dart';

class TaskDetailScreen extends StatelessWidget {
  TaskDetailScreen({super.key, required this.task});
  final TaskModel task;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.kblackColor,
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverrAppbarWidget(
            title: '${task.title}',
            left: task.left!,
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                  color: Appcolor.kwhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [DatePicker()],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
