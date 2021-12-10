import 'package:converter/routeConfigration.dart';
import 'package:converter/splash_screen.dart';
import 'package:converter/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
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
