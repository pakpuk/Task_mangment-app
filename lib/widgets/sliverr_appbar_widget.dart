import 'package:flutter/material.dart';
import 'package:taskmanagment_app/core/appcolor.dart';

class SliverrAppbarWidget extends StatelessWidget {
  const SliverrAppbarWidget({super.key});

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
        )
      ],
    );
  }
}
