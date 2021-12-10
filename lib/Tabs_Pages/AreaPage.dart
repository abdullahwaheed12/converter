import 'package:flutter/material.dart';
import 'package:units_converter/units_converter.dart';

class AreaPage extends StatefulWidget {
  static final String pageName = '/Area page';
  @override
  _AreaPageState createState() => _AreaPageState();
}

class _AreaPageState extends State<AreaPage> {
  List<String> _selectionUnits = [
    'Square_meters',
    'Square_centimeters',
    'Square_inches',
    'Square_feet',
    'Square_miles',
    'Square_yard',
    'Square_millimeters',
    'Square_kilometers',
    'Hectares',
    'Acres',
    'Are',
  ]; // Option 2
  String _selectedUnit1st = 'Square_meters';
  String _selectedUnit2nd = 'Square_centimeters';
  String _getTextFeildValue;
  String _showResult;
  String _showFinalReslut = 'Result';
  var area;
  Unit unit;

  double width;
  double height;

  @override
  void initState() {
    super.initState();
    area = Area(removeTrailingZeros: false);
  }

  void calculate() {
    if (_selectedUnit1st == 'Square_meters' &&
        _selectedUnit2nd == 'Square_centimeters') {
      area.convert(AREA.square_meters, double.parse(_getTextFeildValue));
      unit = area.square_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_meters' &&
        _selectedUnit2nd == 'Square_inches') {
      area.convert(AREA.square_meters, double.parse(_getTextFeildValue));
      unit = area.square_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_meters' &&
        _selectedUnit2nd == 'Square_feet') {
      area.convert(AREA.square_meters, double.parse(_getTextFeildValue));
      unit = area.square_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_meters' &&
        _selectedUnit2nd == 'Square_miles') {
      area.convert(AREA.square_meters, double.parse(_getTextFeildValue));
      unit = area.square_miles;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_meters' &&
        _selectedUnit2nd == 'Square_yard') {
      area.convert(AREA.square_meters, double.parse(_getTextFeildValue));
      unit = area.square_yard;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_meters' &&
        _selectedUnit2nd == 'Square_millimeters') {
      area.convert(AREA.square_meters, double.parse(_getTextFeildValue));
      unit = area.square_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_meters' &&
        _selectedUnit2nd == 'Square_kilometers') {
      area.convert(AREA.square_meters, double.parse(_getTextFeildValue));
      unit = area.square_kilometers;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_meters' &&
        _selectedUnit2nd == 'Hectares') {
      area.convert(AREA.square_meters, double.parse(_getTextFeildValue));
      unit = area.hectares;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_meters' &&
        _selectedUnit2nd == 'Acres') {
      area.convert(AREA.square_meters, double.parse(_getTextFeildValue));
      unit = area.acres;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_meters' && _selectedUnit2nd == 'Are') {
      area.convert(AREA.square_meters, double.parse(_getTextFeildValue));
      unit = area.are;
      _showResult = unit.stringValue;
    }

    //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Square_centimeters' &&
        _selectedUnit2nd == 'Square_meters') {
      area.convert(AREA.square_centimeters, double.parse(_getTextFeildValue));
      unit = area.square_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_centimeters' &&
        _selectedUnit2nd == 'Square_inches') {
      area.convert(AREA.square_centimeters, double.parse(_getTextFeildValue));
      unit = area.square_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_centimeters' &&
        _selectedUnit2nd == 'Square_feet') {
      area.convert(AREA.square_centimeters, double.parse(_getTextFeildValue));
      unit = area.square_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_centimeters' &&
        _selectedUnit2nd == 'Square_miles') {
      area.convert(AREA.square_centimeters, double.parse(_getTextFeildValue));
      unit = area.square_miles;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_centimeters' &&
        _selectedUnit2nd == 'Square_yard') {
      area.convert(AREA.square_centimeters, double.parse(_getTextFeildValue));
      unit = area.square_yard;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_centimeters' &&
        _selectedUnit2nd == 'Square_millimeters') {
      area.convert(AREA.square_centimeters, double.parse(_getTextFeildValue));
      unit = area.square_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_centimeters' &&
        _selectedUnit2nd == 'Square_kilometers') {
      area.convert(AREA.square_centimeters, double.parse(_getTextFeildValue));
      unit = area.square_kilometers;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_centimeters' &&
        _selectedUnit2nd == 'Hectares') {
      area.convert(AREA.square_centimeters, double.parse(_getTextFeildValue));
      unit = area.hectares;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_centimeters' &&
        _selectedUnit2nd == 'Acres') {
      area.convert(AREA.square_centimeters, double.parse(_getTextFeildValue));
      unit = area.acres;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_centimeters' &&
        _selectedUnit2nd == 'Are') {
      area.convert(AREA.square_centimeters, double.parse(_getTextFeildValue));
      unit = area.are;
      _showResult = unit.stringValue;
    }

    //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Square_inches' &&
        _selectedUnit2nd == 'Square_meters') {
      area.convert(AREA.square_inches, double.parse(_getTextFeildValue));
      unit = area.square_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_inches' &&
        _selectedUnit2nd == 'Square_centimeters') {
      area.convert(AREA.square_inches, double.parse(_getTextFeildValue));
      unit = area.square_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_inches' &&
        _selectedUnit2nd == 'Square_feet') {
      area.convert(AREA.square_inches, double.parse(_getTextFeildValue));
      unit = area.square_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_inches' &&
        _selectedUnit2nd == 'Square_miles') {
      area.convert(AREA.square_inches, double.parse(_getTextFeildValue));
      unit = area.square_miles;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_inches' &&
        _selectedUnit2nd == 'Square_yard') {
      area.convert(AREA.square_inches, double.parse(_getTextFeildValue));
      unit = area.square_yard;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_inches' &&
        _selectedUnit2nd == 'Square_millimeters') {
      area.convert(AREA.square_inches, double.parse(_getTextFeildValue));
      unit = area.square_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_inches' &&
        _selectedUnit2nd == 'Square_kilometers') {
      area.convert(AREA.square_inches, double.parse(_getTextFeildValue));
      unit = area.square_kilometers;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_inches' &&
        _selectedUnit2nd == 'Hectares') {
      area.convert(AREA.square_inches, double.parse(_getTextFeildValue));
      unit = area.hectares;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_inches' &&
        _selectedUnit2nd == 'Acres') {
      area.convert(AREA.square_inches, double.parse(_getTextFeildValue));
      unit = area.acres;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_inches' && _selectedUnit2nd == 'Are') {
      area.convert(AREA.square_inches, double.parse(_getTextFeildValue));
      unit = area.are;
      _showResult = unit.stringValue;
    }

    //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Square_feet' &&
        _selectedUnit2nd == 'Square_meters') {
      area.convert(AREA.square_feet, double.parse(_getTextFeildValue));
      unit = area.square_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_feet' &&
        _selectedUnit2nd == 'Square_centimeters') {
      area.convert(AREA.square_feet, double.parse(_getTextFeildValue));
      unit = area.square_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_feet' &&
        _selectedUnit2nd == 'Square_inches') {
      area.convert(AREA.square_feet, double.parse(_getTextFeildValue));
      unit = area.square_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_feet' &&
        _selectedUnit2nd == 'Square_miles') {
      area.convert(AREA.square_feet, double.parse(_getTextFeildValue));
      unit = area.square_miles;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_feet' &&
        _selectedUnit2nd == 'Square_yard') {
      area.convert(AREA.square_feet, double.parse(_getTextFeildValue));
      unit = area.square_yard;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_feet' &&
        _selectedUnit2nd == 'Square_millimeters') {
      area.convert(AREA.square_feet, double.parse(_getTextFeildValue));
      unit = area.square_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_feet' &&
        _selectedUnit2nd == 'Square_kilometers') {
      area.convert(AREA.square_feet, double.parse(_getTextFeildValue));
      unit = area.square_kilometers;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_feet' &&
        _selectedUnit2nd == 'Hectares') {
      area.convert(AREA.square_feet, double.parse(_getTextFeildValue));
      unit = area.hectares;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_feet' && _selectedUnit2nd == 'Acres') {
      area.convert(AREA.square_feet, double.parse(_getTextFeildValue));
      unit = area.acres;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_feet' && _selectedUnit2nd == 'Are') {
      area.convert(AREA.square_feet, double.parse(_getTextFeildValue));
      unit = area.are;
      _showResult = unit.stringValue;
    }

    // ------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Square_miles' &&
        _selectedUnit2nd == 'Square_meters') {
      area.convert(AREA.square_miles, double.parse(_getTextFeildValue));
      unit = area.square_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_miles' &&
        _selectedUnit2nd == 'Square_centimeters') {
      area.convert(AREA.square_miles, double.parse(_getTextFeildValue));
      unit = area.square_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_miles' &&
        _selectedUnit2nd == 'Square_inches') {
      area.convert(AREA.square_miles, double.parse(_getTextFeildValue));
      unit = area.square_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_miles' &&
        _selectedUnit2nd == 'Square_feet') {
      area.convert(AREA.square_miles, double.parse(_getTextFeildValue));
      unit = area.square_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_miles' &&
        _selectedUnit2nd == 'Square_yard') {
      area.convert(AREA.square_miles, double.parse(_getTextFeildValue));
      unit = area.square_yard;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_miles' &&
        _selectedUnit2nd == 'Square_millimeters') {
      area.convert(AREA.square_miles, double.parse(_getTextFeildValue));
      unit = area.square_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_miles' &&
        _selectedUnit2nd == 'Square_kilometers') {
      area.convert(AREA.square_miles, double.parse(_getTextFeildValue));
      unit = area.square_kilometers;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_miles' &&
        _selectedUnit2nd == 'Hectares') {
      area.convert(AREA.square_miles, double.parse(_getTextFeildValue));
      unit = area.hectares;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_miles' &&
        _selectedUnit2nd == 'Acres') {
      area.convert(AREA.square_miles, double.parse(_getTextFeildValue));
      unit = area.acres;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_miles' && _selectedUnit2nd == 'Are') {
      area.convert(AREA.square_miles, double.parse(_getTextFeildValue));
      unit = area.are;
      _showResult = unit.stringValue;
    }

    //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Square_yard' &&
        _selectedUnit2nd == 'Square_meters') {
      area.convert(AREA.square_yard, double.parse(_getTextFeildValue));
      unit = area.square_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_yard' &&
        _selectedUnit2nd == 'Square_centimeters') {
      area.convert(AREA.square_yard, double.parse(_getTextFeildValue));
      unit = area.square_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_yard' &&
        _selectedUnit2nd == 'Square_inches') {
      area.convert(AREA.square_yard, double.parse(_getTextFeildValue));
      unit = area.square_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_yard' &&
        _selectedUnit2nd == 'Square_feet') {
      area.convert(AREA.square_yard, double.parse(_getTextFeildValue));
      unit = area.square_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_yard' &&
        _selectedUnit2nd == 'Square_miles') {
      area.convert(AREA.square_yard, double.parse(_getTextFeildValue));
      unit = area.square_miles;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_yard' &&
        _selectedUnit2nd == 'Square_millimeters') {
      area.convert(AREA.square_yard, double.parse(_getTextFeildValue));
      unit = area.square_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_yard' &&
        _selectedUnit2nd == 'Square_kilometers') {
      area.convert(AREA.square_yard, double.parse(_getTextFeildValue));
      unit = area.square_kilometers;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_yard' &&
        _selectedUnit2nd == 'Hectares') {
      area.convert(AREA.square_yard, double.parse(_getTextFeildValue));
      unit = area.hectares;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_yard' && _selectedUnit2nd == 'Acres') {
      area.convert(AREA.square_yard, double.parse(_getTextFeildValue));
      unit = area.acres;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_yard' && _selectedUnit2nd == 'Are') {
      area.convert(AREA.square_yard, double.parse(_getTextFeildValue));
      unit = area.are;
      _showResult = unit.stringValue;
    }

    //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Square_millimeters' &&
        _selectedUnit2nd == 'Square_meters') {
      area.convert(AREA.square_millimeters, double.parse(_getTextFeildValue));
      unit = area.square_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_millimeters' &&
        _selectedUnit2nd == 'Square_centimeters') {
      area.convert(AREA.square_millimeters, double.parse(_getTextFeildValue));
      unit = area.square_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_millimeters' &&
        _selectedUnit2nd == 'Square_inches') {
      area.convert(AREA.square_millimeters, double.parse(_getTextFeildValue));
      unit = area.square_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_millimeters' &&
        _selectedUnit2nd == 'Square_feet') {
      area.convert(AREA.square_millimeters, double.parse(_getTextFeildValue));
      unit = area.square_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_millimeters' &&
        _selectedUnit2nd == 'Square_miles') {
      area.convert(AREA.square_millimeters, double.parse(_getTextFeildValue));
      unit = area.square_miles;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_millimeters' &&
        _selectedUnit2nd == 'Square_yard') {
      area.convert(AREA.square_millimeters, double.parse(_getTextFeildValue));
      unit = area.square_yard;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_millimeters' &&
        _selectedUnit2nd == 'Square_kilometers') {
      area.convert(AREA.square_millimeters, double.parse(_getTextFeildValue));
      unit = area.square_kilometers;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_millimeters' &&
        _selectedUnit2nd == 'Hectares') {
      area.convert(AREA.square_millimeters, double.parse(_getTextFeildValue));
      unit = area.hectares;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_millimeters' &&
        _selectedUnit2nd == 'Acres') {
      area.convert(AREA.square_millimeters, double.parse(_getTextFeildValue));
      unit = area.acres;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_millimeters' &&
        _selectedUnit2nd == 'Are') {
      area.convert(AREA.square_millimeters, double.parse(_getTextFeildValue));
      unit = area.are;
      _showResult = unit.stringValue;
    }

    // ------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Square_kilometers' &&
        _selectedUnit2nd == 'Square_meters') {
      area.convert(AREA.square_kilometers, double.parse(_getTextFeildValue));
      unit = area.square_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_kilometers' &&
        _selectedUnit2nd == 'Square_centimeters') {
      area.convert(AREA.square_kilometers, double.parse(_getTextFeildValue));
      unit = area.square_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_kilometers' &&
        _selectedUnit2nd == 'Square_inches') {
      area.convert(AREA.square_kilometers, double.parse(_getTextFeildValue));
      unit = area.square_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_kilometers' &&
        _selectedUnit2nd == 'Square_feet') {
      area.convert(AREA.square_kilometers, double.parse(_getTextFeildValue));
      unit = area.square_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_kilometers' &&
        _selectedUnit2nd == 'Square_miles') {
      area.convert(AREA.square_kilometers, double.parse(_getTextFeildValue));
      unit = area.square_miles;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_kilometers' &&
        _selectedUnit2nd == 'Square_yard') {
      area.convert(AREA.square_kilometers, double.parse(_getTextFeildValue));
      unit = area.square_yard;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_kilometers' &&
        _selectedUnit2nd == 'Square_millimeters') {
      area.convert(AREA.square_kilometers, double.parse(_getTextFeildValue));
      unit = area.square_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_kilometers' &&
        _selectedUnit2nd == 'Hectares') {
      area.convert(AREA.square_kilometers, double.parse(_getTextFeildValue));
      unit = area.hectares;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_kilometers' &&
        _selectedUnit2nd == 'Acres') {
      area.convert(AREA.square_kilometers, double.parse(_getTextFeildValue));
      unit = area.acres;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Square_kilometers' &&
        _selectedUnit2nd == 'Are') {
      area.convert(AREA.square_kilometers, double.parse(_getTextFeildValue));
      unit = area.are;
      _showResult = unit.stringValue;
    }

    //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Hectares' &&
        _selectedUnit2nd == 'Square_meters') {
      area.convert(AREA.hectares, double.parse(_getTextFeildValue));
      unit = area.square_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hectares' &&
        _selectedUnit2nd == 'Square_centimeters') {
      area.convert(AREA.hectares, double.parse(_getTextFeildValue));
      unit = area.square_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hectares' &&
        _selectedUnit2nd == 'Square_inches') {
      area.convert(AREA.hectares, double.parse(_getTextFeildValue));
      unit = area.square_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hectares' &&
        _selectedUnit2nd == 'Square_feet') {
      area.convert(AREA.hectares, double.parse(_getTextFeildValue));
      unit = area.square_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hectares' &&
        _selectedUnit2nd == 'Square_miles') {
      area.convert(AREA.hectares, double.parse(_getTextFeildValue));
      unit = area.square_miles;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hectares' &&
        _selectedUnit2nd == 'Square_yard') {
      area.convert(AREA.hectares, double.parse(_getTextFeildValue));
      unit = area.square_yard;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hectares' &&
        _selectedUnit2nd == 'Square_millimeters') {
      area.convert(AREA.hectares, double.parse(_getTextFeildValue));
      unit = area.square_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hectares' &&
        _selectedUnit2nd == 'Square_kilometers') {
      area.convert(AREA.hectares, double.parse(_getTextFeildValue));
      unit = area.square_kilometers;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hectares' && _selectedUnit2nd == 'Acres') {
      area.convert(AREA.hectares, double.parse(_getTextFeildValue));
      unit = area.acres;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hectares' && _selectedUnit2nd == 'Are') {
      area.convert(AREA.hectares, double.parse(_getTextFeildValue));
      unit = area.are;
      _showResult = unit.stringValue;
    }

//------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Acres' &&
        _selectedUnit2nd == 'Square_meters') {
      area.convert(AREA.acres, double.parse(_getTextFeildValue));
      unit = area.square_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Acres' &&
        _selectedUnit2nd == 'Square_centimeters') {
      area.convert(AREA.acres, double.parse(_getTextFeildValue));
      unit = area.square_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Acres' &&
        _selectedUnit2nd == 'Square_inches') {
      area.convert(AREA.acres, double.parse(_getTextFeildValue));
      unit = area.square_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Acres' && _selectedUnit2nd == 'Square_feet') {
      area.convert(AREA.acres, double.parse(_getTextFeildValue));
      unit = area.square_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Acres' &&
        _selectedUnit2nd == 'Square_miles') {
      area.convert(AREA.acres, double.parse(_getTextFeildValue));
      unit = area.square_miles;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Acres' && _selectedUnit2nd == 'Square_yard') {
      area.convert(AREA.acres, double.parse(_getTextFeildValue));
      unit = area.square_yard;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Acres' &&
        _selectedUnit2nd == 'Square_millimeters') {
      area.convert(AREA.acres, double.parse(_getTextFeildValue));
      unit = area.square_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Acres' &&
        _selectedUnit2nd == 'Square_kilometers') {
      area.convert(AREA.acres, double.parse(_getTextFeildValue));
      unit = area.square_kilometers;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Acres' && _selectedUnit2nd == 'Hectares') {
      area.convert(AREA.acres, double.parse(_getTextFeildValue));
      unit = area.hectares;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Acres' && _selectedUnit2nd == 'Are') {
      area.convert(AREA.acres, double.parse(_getTextFeildValue));
      unit = area.are;
      _showResult = unit.stringValue;
    }

//------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Are' && _selectedUnit2nd == 'Square_meters') {
      area.convert(AREA.are, double.parse(_getTextFeildValue));
      unit = area.square_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Are' &&
        _selectedUnit2nd == 'Square_centimeters') {
      area.convert(AREA.are, double.parse(_getTextFeildValue));
      unit = area.square_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Are' && _selectedUnit2nd == 'Square_inches') {
      area.convert(AREA.are, double.parse(_getTextFeildValue));
      unit = area.square_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Are' && _selectedUnit2nd == 'Square_feet') {
      area.convert(AREA.are, double.parse(_getTextFeildValue));
      unit = area.square_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Are' && _selectedUnit2nd == 'Square_miles') {
      area.convert(AREA.are, double.parse(_getTextFeildValue));
      unit = area.square_miles;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Are' && _selectedUnit2nd == 'Square_yard') {
      area.convert(AREA.are, double.parse(_getTextFeildValue));
      unit = area.square_yard;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Are' &&
        _selectedUnit2nd == 'Square_millimeters') {
      area.convert(AREA.are, double.parse(_getTextFeildValue));
      unit = area.square_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Are' &&
        _selectedUnit2nd == 'Square_kilometers') {
      area.convert(AREA.are, double.parse(_getTextFeildValue));
      unit = area.square_kilometers;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Are' && _selectedUnit2nd == 'Hectares') {
      area.convert(AREA.are, double.parse(_getTextFeildValue));
      unit = area.hectares;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Are' && _selectedUnit2nd == 'Acres') {
      area.convert(AREA.are, double.parse(_getTextFeildValue));
      unit = area.acres;
      _showResult = unit.stringValue;
    }

    ////////////////////////

    else {
      _showResult = _getTextFeildValue;
    }
    setState(() {
      _showFinalReslut = _showResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: width,
              height: height / 2,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Area',
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: width * 0.4,
                            alignment: Alignment.center,
                            child: TextField(
                              onChanged: (val) {
                                _getTextFeildValue = val;
                              },
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                labelText: 'Enter Area',
                                labelStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: DropdownButton(
                              elevation: 20,
                              dropdownColor: Colors.blueAccent.withOpacity(0.8),
                              hint: Text(
                                'Select',
                              ),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              alignment: Alignment.centerLeft,
                              value: _selectedUnit1st,
                              borderRadius: BorderRadius.circular(5),
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedUnit1st = newValue;
                                });
                              },
                              items: _selectionUnits.map((location) {
                                return DropdownMenuItem(
                                  child: new Text(location),
                                  value: location,
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              height: height / 2,
              // color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: width * 0.4,
                          child: Text(
                            _showFinalReslut,
                            style: TextStyle(
                                fontSize: 32, color: Colors.blueAccent),
                          ),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: DropdownButton(
                            elevation: 20,
                            dropdownColor:
                                Colors.grey.shade200.withOpacity(0.8),
                            hint: Text(
                              'Select',
                            ),
                            style: TextStyle(
                              color: Colors.blueAccent,
                            ),
                            value: _selectedUnit2nd,
                            borderRadius: BorderRadius.circular(5),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedUnit2nd = newValue;
                              });
                            },
                            items: _selectionUnits.map((location) {
                              return DropdownMenuItem(
                                child: new Text(location),
                                value: location,
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: width * 0.3,
                          child: ElevatedButton(
                            onPressed: () {
                              calculate();
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.blueAccent)),
                            child: Text('Calculate'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
