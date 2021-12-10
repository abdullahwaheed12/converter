import 'package:flutter/material.dart';

enum Themes { dark, light }
var themMap = <Themes, ThemeData>{
  Themes.dark: ThemeData.dark().copyWith(
      textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black))),
  Themes.light: ThemeData.light(),
};

class MyTheme extends ChangeNotifier {
  ThemeData _themeData;
  MyTheme({@required Themes themeMode}) : _themeData = themMap[themeMode];
  set setThemeData(Themes themeMode) {
    _themeData = themMap[themeMode];
    notifyListeners();
  }

  ThemeData get getThemeData => _themeData;
}
