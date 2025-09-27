import 'package:flutter/material.dart';
import 'package:taskmanagment_app/core/appcolor.dart';

class BottomNavBarrWidget extends StatelessWidget {
  const BottomNavBarrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Appcolor.kgrey.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 5,
            )
          ]),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: Appcolor.kwhite,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Appcolor.kBlueaccent,
          unselectedItemColor: Appcolor.kgrey.withOpacity(0.5),
          items: [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home_rounded,
                  size: 30,
                )),
            BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(
                  Icons.person_rounded,
                  size: 30,
                ))
          ],
        ),
      ),
    );
  }
}
