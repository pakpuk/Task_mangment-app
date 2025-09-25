import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmanagment_app/utils/colors.dart';
import 'package:taskmanagment_app/widgets/button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(""), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: 'Hello',
                  style: TextStyle(
                      fontSize: 60,
                      color: Appcolors.maincolor,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: '\nstart your buetiful day ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Appcolors.smalletextrcolor,
                        ))
                  ]),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 2.5),
            Buttonwidget(
                Backgroundcolor: Appcolors.maincolor,
                text: "Add Task",
                TextColor: Colors.white),
            SizedBox(
              height: 20,
            ),
            Buttonwidget(
                Backgroundcolor: Colors.white,
                text: "View All",
                TextColor: Appcolors.smalletextrcolor),
          ],
        ),
      ),
    );
  }
}
