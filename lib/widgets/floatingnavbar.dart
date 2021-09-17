import 'package:brookmobiles/consts/icons.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class FloatingNavigationBar extends StatelessWidget {
  final int index;
  final Function function;

  FloatingNavigationBar({
    required this.index,
    required this.function,
  });

  Widget build(BuildContext context) {
    return FloatingNavbar(
      borderRadius: 50,
      itemBorderRadius: 50,
      selectedItemColor: Colors.amber,
      selectedBackgroundColor: Colors.black,
      items: [
        FloatingNavbarItem(
          icon: MyIcons.home,
          title: "Home",
        ),
        FloatingNavbarItem(
          icon: MyIcons.search,
          title: "Search",
        ),
        FloatingNavbarItem(
          icon: MyIcons.service,
          title: "Service",
        ),
        FloatingNavbarItem(
          icon: MyIcons.profile,
          title: "Profile",
        ),
      ],
      margin: EdgeInsets.all(20),
      unselectedItemColor: Colors.grey,
      elevation: 30,
      iconSize: 20,
      currentIndex: index,
      onTap: (int index) {
        function(index);
      },
    );
  }
}
