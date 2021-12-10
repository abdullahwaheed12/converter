import 'dart:math' as math;

import 'package:converter/Tabs_Pages/AreaPage.dart';
import 'package:converter/Tabs_Pages/LengthPage.dart';
import 'package:converter/Tabs_Pages/MasPage.dart';
import 'package:converter/Tabs_Pages/TemperaturePage.dart';
import 'package:converter/Tabs_Pages/TimePage.dart';
import 'package:converter/Tabs_Pages/VolumePage.dart';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

import 'CustomClipper/top_container_clipper.dart';
import 'Tabs_Pages/ForcePage.dart';
import 'Tabs_Pages/NumberSystemPage.dart';
import 'Tabs_Pages/SpeedPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double width;
  double height;
  double check;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    check = math.min(width, height) * 0.5;
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipPath(
                clipper: TopContainerColipper(),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: width,
                      height: height * 0.5,
                      alignment: Alignment.centerLeft,
                      color: Colors.blue.withOpacity(0.6),
                      child: Image(
                        image: AssetImage('images/pattern.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    GlassmorphicContainer(
                      width: width,
                      height: height * 0.5,
                      borderRadius: 0,
                      linearGradient: LinearGradient(
                        colors: [
                          Colors.blue.withOpacity(0.6),
                          Colors.white.withOpacity(0.6),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      border: 0,
                      blur: 2,
                      borderGradient: LinearGradient(colors: [
                        Colors.blue.withOpacity(0.6),
                        Colors.white.withOpacity(0.6),
                      ]),
                      child: Column(
                        children: [
                          Container(
                            height: kToolbarHeight,
                            padding: EdgeInsets.only(left: 16),
                            alignment: Alignment.centerLeft,
                            // child: Icon(
                            //   Icons.menu,
                            //   color: Colors.white,
                            // ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: width * 0.15),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Welcome',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: width * 0.15),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Unit Converter',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: height * 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          itemsShapeWidget(
                              width,
                              height,
                              check,
                              'images/temperature.png',
                              'Temperatue',
                              TemperaturePage.pageName,
                              context),
                          itemsShapeWidget(
                              width,
                              height,
                              check,
                              'images/length.png',
                              'Length',
                              LengthPage.pageName,
                              context),
                          itemsShapeWidget(
                              width,
                              height,
                              check,
                              'images/time.png',
                              'Time',
                              TimePage.pageName,
                              context),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          itemsShapeWidget(
                              width,
                              height,
                              check,
                              'images/volume.png',
                              'Volume',
                              VolumePage.pageName,
                              context),
                          itemsShapeWidget(
                              width,
                              height,
                              check,
                              'images/area.png',
                              'Area',
                              AreaPage.pageName,
                              context),
                          itemsShapeWidget(
                              width,
                              height,
                              check,
                              'images/weight.png',
                              'Weight',
                              MassPage.pageName,
                              context),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          itemsShapeWidget(
                              width,
                              height,
                              check,
                              'images/force.png',
                              'Force',
                              ForcePage.pageName,
                              context),
                          itemsShapeWidget(
                              width,
                              height,
                              check,
                              'images/number.png',
                              'Number',
                              NumberSystemPage.pageName,
                              context),
                          itemsShapeWidget(
                              width,
                              height,
                              check,
                              'images/speed.png',
                              'Speed',
                              SpeedPage.pageName,
                              context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget itemsShapeWidget(
  double width,
  double height,
  double check,
  String imageResource,
  String textOfItem,
  String pageName,
  BuildContext context,
) {
  return Expanded(
    child: Container(
      alignment: Alignment.center,
      child: Container(
        width: width * 0.26,
        height: (height * 0.7) * 0.26,
        child: Card(
          elevation: 8,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(pageName);
            },
            highlightColor: Colors.blue,
            child: Padding(
              padding: EdgeInsets.all(check * 0.06),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Image(
                      image: AssetImage(imageResource),
                      colorBlendMode: BlendMode.hue,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        textOfItem,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: check * 0.06),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
