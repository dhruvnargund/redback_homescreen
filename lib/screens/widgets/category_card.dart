import 'dart:html';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';


class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  const CategoryCard({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
          // padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xFFF5CeB8),
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23,
                color: Color(0xFFE6E6E6),
              ),
            ],
          ),
          child: Material(
            color: Colors.white.withOpacity(0.0),
            child: InkWell(
              // Add what we want to do in each tab here
              onTap: press(),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    SvgPicture.asset(svgSrc,
                        height: 100, width: 100, fit: BoxFit.scaleDown),
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
          )
          // child: InkWell(
          //   // Add what we want to do in each tab here
          //   onTap: press(),
          //   child: Padding(
          //     padding: const EdgeInsets.all(20.0),
          //     child: Column(
          //       children: <Widget>[
          //         Spacer(),
          //         SvgPicture.asset(svgSrc,
          //             height: 100, width: 100, fit: BoxFit.scaleDown),
          //         Text(
          //           title,
          //           style: Theme.of(context)
          //               .textTheme
          //               .headline6!
          //               .copyWith(fontSize: 15),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
