import 'package:converter/firebase_options.dart';
import 'package:converter/routeConfigration.dart';
import 'package:converter/splash_screen.dart';
import 'package:converter/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyTheme>(
      create: (context) => MyTheme(themeMode: Themes.dark),
      child: Consumer<MyTheme>(
        builder: (context, value, child) => MaterialApp(
          onGenerateRoute: RouteConfigration.routeConfigration,
          title: 'Converter',
          theme: value.getThemeData,
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        ),
      ),
    );
  }
}
