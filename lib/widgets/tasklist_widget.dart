import 'package:flutter/material.dart';
import 'package:taskmanagment_app/models/Task_model.dart';
import 'package:taskmanagment_app/widgets/builaddtask_widget.dart';
import 'package:taskmanagment_app/widgets/buildtask_widget.dart';

class TasklistWidget extends StatelessWidget {
  TasklistWidget({super.key});
  final taskList = TaskModel.generateTask();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          itemCount: taskList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) => taskList[index].islast!
              ? BuiladdtaskWidget()
              : BuildtaskWidget(
                  task: taskList[index],
                  ontap: () {},
                )),
    );
  }
}
