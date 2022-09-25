import 'dart:html';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:redback_mobile_app/screens/widgets/bottomNavBar.dart';
import 'package:redback_mobile_app/screens/widgets/category_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Will remove debug mode
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF380e4a),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; // will give us total height and width of device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
          // This will create the goodmorning/evening thing with 40% of screen
          children: <Widget>[
            Container(
              // This is the hamburger menu Icon
              alignment: Alignment.center,
              height: size.height * .40,
              decoration: BoxDecoration(
                color: Color(0xFFF5CeB8),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 0),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        alignment: Alignment.center,
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          color: Color(0xFFe9624c),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset("assets/icons/menu.svg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
                      child: Text(
                        "Welcome",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontWeight: FontWeight.w900),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: Color(0xFFe9624c),
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Start Exercise',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 0.85,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: <Widget>[
                          CategoryCard(
                            title: "Calorie Left",
                            svgSrc: "assets/icons/Hamburger.svg",
                            press: () {},
                          ),
                          CategoryCard(
                            title: "Calorie Burned",
                            svgSrc: "assets/icons/Excrecises.svg",
                            press: () {},
                          ),
                          CategoryCard(
                            title: "Steps Taken",
                            svgSrc: "assets/icons/running.svg",
                            press: () {},
                          ),
                          CategoryCard(
                            title: "Gal. Petrol Saved",
                            svgSrc: "assets/icons/oil.svg",
                            press: () {},
                          ),
                          CategoryCard(
                            title: "LBS CO2 Offset",
                            svgSrc: "assets/icons/co2.svg",
                            press: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
    );
  }
}
