import 'package:flutter/material.dart';
import 'package:taskmanagment_app/core/appcolor.dart';
import 'package:taskmanagment_app/core/textmanager.dart';
import 'package:taskmanagment_app/widgets/gopremuiim_widget.dart';
import 'package:taskmanagment_app/widgets/tasklist_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          child: Image.asset(
                              'assets/images/jakob-owens-lkMJcGDZLVs-unsplash.jpg'),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Text(
                        Textmanager.wlcmomsg,
                        style: TextStyle(
                          color: Appcolor.kblackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: Appcolor.kYellewLight,
                    size: 40,
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const GopremuiimWidget(),
              const SizedBox(
                height: 12,
              ),
              const Text(
                Textmanager.taskText,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 18,
              ),
              Expanded(child: TasklistWidget())
            ],
          ),
        ),
      ),
    );
  }
}
