import 'package:flutter/material.dart';
import 'package:taskmanagment_app/core/appcolor.dart';
import 'package:taskmanagment_app/models/Task_model.dart';

class SliverrAppbarWidget extends StatelessWidget {
  const SliverrAppbarWidget(
      {super.key, required this.title, required this.left});
  final String title;
  final num left;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 90,
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Appcolor.kwhite,
            size: 20,
          )),
      actions: [
        Icon(
          Icons.more_vert,
          size: 30,
          color: Appcolor.kwhite,
        ),
        FlexibleSpaceBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${title} Tasks",
                style: TextStyle(
                    color: Appcolor.kwhite,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "You havve ${left} tasks for today!",
                style: TextStyle(color: Appcolor.kgrey, fontSize: 12),
              )
            ],
          ),
        )
      ],
    );
  }
}
