import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      height: 80,
      color: Color(0xFFe9624c),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavBarItem(
            title: "Home",
            svgScr: "assets/icons/home.svg",
            isActive: true,
            press: () {},
          ),
          BottomNavBarItem(
            title: "Friends",
            svgScr: "assets/icons/friend.svg",
            press: () {},
          ),
          BottomNavBarItem(
            title: "Arena",
            svgScr: "assets/icons/arena.svg",
            press: () {},
          ),
          BottomNavBarItem(
            title: "Settings",
            svgScr: "assets/icons/Settings.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavBarItem({
    Key? key,
    required this.svgScr,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(svgScr,
              height: 70,
              width: 70,
              fit: BoxFit.scaleDown,
              color: isActive ? Color(0xFFe9624c) : Colors.black),
          Text(
            title,
            style: TextStyle(
                fontWeight: isActive ? FontWeight.w900 : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
