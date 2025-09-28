import 'package:flutter/material.dart';
import 'package:taskmanagment_app/core/appcolor.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TaskTimelineWidget extends StatelessWidget {
  const TaskTimelineWidget({super.key, required this.detail});
  final Map<String, dynamic> detail;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Appcolor.kwhite,
      child: Row(
        children: [
          _buildTimeLine(detail['tlcolor']),
        ],
      ),
    );
  }

  Widget _buildTimeLine(Color color) {
    return Container(
      width: 20,
      height: 80,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0,
        isFirst: true,
        indicatorStyle: IndicatorStyle(
            width: 15,
            indicator: Container(
              decoration: BoxDecoration(
                  color: Appcolor.kwhite,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: color,
                    width: 5,
                  )),
            )),
      ),
    );
  }
}
