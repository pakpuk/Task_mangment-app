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
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${detail['time']}",
                style: const TextStyle(
                  color: Appcolor.kblackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(4),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: detail['bgcolor'],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      detail['title'],
                      style: const TextStyle(
                          color: Appcolor.kblackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(detail['slot'],
                        style: const TextStyle(
                          color: Appcolor.kgrey,
                          fontSize: 12,
                        ))
                  ],
                ),
              )
            ],
          ))
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
        afterLineStyle: LineStyle(
          thickness: 2,
          color: color,
        ),
      ),
    );
  }
}
