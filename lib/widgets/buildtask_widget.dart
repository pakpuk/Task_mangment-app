import 'package:flutter/material.dart';
import 'package:taskmanagment_app/core/appcolor.dart';
import 'package:taskmanagment_app/models/Task_model.dart';
import 'package:taskmanagment_app/widgets/button_widget.dart';

class BuildtaskWidget extends StatelessWidget {
  final TaskModel task;
  final VoidCallback ontap;
  const BuildtaskWidget({super.key, required this.task, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(color: task.backgroundcolor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                task.iconData,
                color: task.iconcolor,
                size: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                task.title!,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Buttonwidget(
                      Backgroundcolor: task.btncolor!,
                      text: '${task.left} left ',
                      TextColor: task.iconcolor!),
                  const SizedBox(
                    width: 5,
                  ),
                  Buttonwidget(
                      Backgroundcolor: Appcolor.kwhite,
                      text: '${task.done} done ',
                      TextColor: task.iconcolor!),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
