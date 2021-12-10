import 'package:converter/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;
  Tween tween;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..forward();
    tween = Tween<double>(begin: 0, end: 1);
    animation = tween.animate(animationController);

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (buildContext) {
          return MainPage();
        }));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueAccent.shade100,
              Colors.blue,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: RotationTransition(
          turns: animation,
          child: SizedBox(
            width: 100,
            height: 100,
            child: Image.asset('images/icon.png'),
          ),
        ),
      ),
    );
  }
}
