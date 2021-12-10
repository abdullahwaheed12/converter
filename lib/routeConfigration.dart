import 'package:converter/Tabs_Pages/AreaPage.dart';
import 'package:converter/Tabs_Pages/ForcePage.dart';
import 'package:converter/Tabs_Pages/LengthPage.dart';
import 'package:converter/Tabs_Pages/MasPage.dart';
import 'package:converter/Tabs_Pages/NumberSystemPage.dart';
import 'package:converter/Tabs_Pages/SpeedPage.dart';
import 'package:converter/Tabs_Pages/TemperaturePage.dart';
import 'package:converter/Tabs_Pages/TimePage.dart';
import 'package:converter/Tabs_Pages/VolumePage.dart';
import 'package:flutter/material.dart';

class RouteConfigration {
  static Route routeConfigration(RouteSettings settings) {
    if (settings.name == AreaPage.pageName) {
      return SlidePageTrasition(AreaPage(), settings, Positions.rightToLeft);
    } else if (settings.name == ForcePage.pageName) {
      return SlidePageTrasition(ForcePage(), settings, Positions.rightToLeft);
    } else if (settings.name == LengthPage.pageName) {
      return SlidePageTrasition(LengthPage(), settings, Positions.rightToLeft);
    } else if (settings.name == MassPage.pageName) {
      return SlidePageTrasition(MassPage(), settings, Positions.rightToLeft);
    } else if (settings.name == NumberSystemPage.pageName) {
      return SlidePageTrasition(
          NumberSystemPage(), settings, Positions.rightToLeft);
    } else if (settings.name == SpeedPage.pageName) {
      return SlidePageTrasition(SpeedPage(), settings, Positions.rightToLeft);
    } else if (settings.name == TemperaturePage.pageName) {
      return SlidePageTrasition(
          TemperaturePage(), settings, Positions.rightToLeft);
    } else if (settings.name == TimePage.pageName) {
      return SlidePageTrasition(TimePage(), settings, Positions.rightToLeft);
    } else if (settings.name == VolumePage.pageName) {
      return SlidePageTrasition(VolumePage(), settings, Positions.rightToLeft);
    } else {
      return SlidePageTrasition(AreaPage(), settings, Positions.rightToLeft);
    }
  }
}

// for transition
enum Positions { leftToRight, rightToLeft, topTobottom, bottomToTop }

// slide page transition
class SlidePageTrasition extends PageRouteBuilder {
  SlidePageTrasition(
      Widget myWidget, RouteSettings settings, Positions position)
      : super(
          settings: settings,
          transitionDuration: Duration(milliseconds: 500),
          reverseTransitionDuration: Duration(milliseconds: 500),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var tweenRightToLeft = Tween<Offset>(
              begin: Offset(1, 0),
              end: Offset.zero,
            );
            var tweenLeftToRight = Tween<Offset>(
              begin: Offset(-1, 0),
              end: Offset.zero,
            );
            var tweenTopToBottom = Tween<Offset>(
              begin: Offset(0, -1),
              end: Offset.zero,
            );
            var tweenBottomToTop = Tween<Offset>(
              begin: Offset(0, 1),
              end: Offset.zero,
            );
            var tween = Tween<double>(begin: 0, end: 1);

            switch (position) {
              case Positions.bottomToTop:
                {
                  return Opacity(
                    opacity: tween.animate(animation).value,
                    child: SlideTransition(
                      // position: tweenBottomToTop.animate(animation),
                      position: tweenBottomToTop.animate(CurvedAnimation(
                          parent: animation, curve: Curves.elasticInOut)),
                      child: child,
                    ),
                  );
                }

              case Positions.topTobottom:
                {
                  return Opacity(
                    opacity: tween.animate(animation).value,
                    child: SlideTransition(
                      position: tweenTopToBottom.animate(animation),
                      child: child,
                    ),
                  );
                }

              case Positions.rightToLeft:
                {
                  return Opacity(
                    opacity: tween.animate(animation).value,
                    child: SlideTransition(
                      position: tweenRightToLeft.animate(animation),
                      child: child,
                    ),
                  );
                }
              case Positions.leftToRight:
                {
                  return Opacity(
                    opacity: tween.animate(animation).value,
                    child: SlideTransition(
                      position: tweenLeftToRight.animate(animation),
                      child: child,
                    ),
                  );
                }
              default:
                {
                  throw 'Wrong entry in animation positions';
                }
            }
          },
          pageBuilder: (context, animation, secondaryAnimation) {
            return myWidget;
          },
        );
}
