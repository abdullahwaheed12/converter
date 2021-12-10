import 'package:flutter/material.dart';

import 'package:units_converter/units_converter.dart';

class VolumePage extends StatefulWidget {
  static final String pageName = '/VolumePage';

  @override
  _VolumePageState createState() => _VolumePageState();
}

class _VolumePageState extends State<VolumePage> {
  List<String> _selectionUnits = [
    'Cubic_meters',
    'Liters',
    'Imperial_gallons',
    'Us_gallons',
    'Imperial_pints',
    'Us_pints',
    'Milliliters',
    'Tablespoons_us',
    'Australian_tablespoons',
    'Cups',
    'Cubic_centimeters',
    'Cubic_feet',
    'Cubic_inches',
    'Cubic_millimeters',
    'Imperial_fluid_ounces',
    'Us_fluid_ounces',
    'Imperial_gill',
    'Us_gill',
  ]; // Option 2
  String _selectedUnit1st = 'Cubic_meters';
  String _selectedUnit2nd = 'Cubic_feet';
  String _getTextFeildValue = '0';
  String _showResult;
  String _showFinalReslut = 'Result';
  var volume;
  Unit unit;

  double width;
  double height;

  @override
  void initState() {
    super.initState();
    volume = Volume(removeTrailingZeros: false);
  }

  void calculate() {
    if (_selectedUnit1st == 'Cubic_meters' && _selectedUnit2nd == 'Liters') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' &&
        _selectedUnit2nd == 'Us_pints') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' && _selectedUnit2nd == 'Cups') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' &&
        _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_meters' &&
        _selectedUnit2nd == 'Us_gill') {
      volume.convert(VOLUME.cubic_meters, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    // ------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Liters' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Liters' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    } else if (_selectedUnit1st == 'Liters' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Liters' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Liters' && _selectedUnit2nd == 'Us_pints') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Liters' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Liters' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Liters' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Liters' && _selectedUnit2nd == 'Cups') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Liters' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Liters' && _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Liters' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Liters' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Liters' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Liters' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Liters' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Liters' && _selectedUnit2nd == 'Us_gill') {
      volume.convert(VOLUME.liters, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    //  ------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Liters') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Us_pints') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Cups') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gallons' &&
        _selectedUnit2nd == 'Us_gill') {
      volume.convert(VOLUME.imperial_gallons, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    // ------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Us_gallons' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' && _selectedUnit2nd == 'Liters') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' &&
        _selectedUnit2nd == 'Us_pints') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' && _selectedUnit2nd == 'Cups') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' &&
        _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gallons' &&
        _selectedUnit2nd == 'Us_gill') {
      volume.convert(VOLUME.us_gallons, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    //   ------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Liters') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Us_pints') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Cups') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_pints' &&
        _selectedUnit2nd == 'Us_gill') {
      volume.convert(VOLUME.imperial_pints, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Us_pints' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' && _selectedUnit2nd == 'Liters') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' && _selectedUnit2nd == 'Cups') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' &&
        _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_pints' && _selectedUnit2nd == 'Us_gill') {
      volume.convert(VOLUME.us_pints, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Liters') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Us_pints') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' && _selectedUnit2nd == 'Cups') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliliters' &&
        _selectedUnit2nd == 'Us_gill') {
      volume.convert(VOLUME.milliliters, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    //  //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Liters') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Us_pints') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Cups') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Tablespoons_us' &&
        _selectedUnit2nd == 'Us_gill') {
      volume.convert(VOLUME.tablespoons_us, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    //      //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Liters') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Us_pints') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Cups') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Australian_tablespoons' &&
        _selectedUnit2nd == 'Us_gill') {
      volume.convert(
          VOLUME.australian_tablespoons, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    //          //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Cups' && _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' && _selectedUnit2nd == 'Liters') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' && _selectedUnit2nd == 'Us_gallons') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' && _selectedUnit2nd == 'Us_pints') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' && _selectedUnit2nd == 'Milliliters') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' && _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' && _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cups' && _selectedUnit2nd == 'Us_gill') {
      volume.convert(VOLUME.cups, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Liters') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Us_pints') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Cups') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_centimeters' &&
        _selectedUnit2nd == 'Us_gill') {
      volume.convert(
          VOLUME.cubic_centimeters, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Cubic_feet' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' && _selectedUnit2nd == 'Liters') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' &&
        _selectedUnit2nd == 'Us_pints') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' && _selectedUnit2nd == 'Cups') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_feet' &&
        _selectedUnit2nd == 'Us_gill') {
      volume.convert(VOLUME.cubic_feet, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    //    //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Liters') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Us_pints') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' && _selectedUnit2nd == 'Cups') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_inches' &&
        _selectedUnit2nd == 'Us_gill') {
      volume.convert(VOLUME.cubic_inches, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    //    //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Liters') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Us_pints') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Cups') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Cubic_millimeters' &&
        _selectedUnit2nd == 'Us_gill') {
      volume.convert(
          VOLUME.cubic_millimeters, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Liters') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Us_pints') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Cups') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_fluid_ounces' &&
        _selectedUnit2nd == 'Us_gill') {
      volume.convert(
          VOLUME.imperial_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    //   //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Liters') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Us_pints') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Cups') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_fluid_ounces' &&
        _selectedUnit2nd == 'Us_gill') {
      volume.convert(VOLUME.us_fluid_ounces, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Liters') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Us_pints') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Cups') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Imperial_gill' &&
        _selectedUnit2nd == 'Us_gill') {
      volume.convert(VOLUME.imperial_gill, double.parse(_getTextFeildValue));
      unit = volume.us_gill;
      _showResult = unit.stringValue;
    }

    //------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Us_gill' &&
        _selectedUnit2nd == 'Cubic_meters') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.cubic_meters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gill' && _selectedUnit2nd == 'Liters') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.liters;
      _showResult = unit.stringValue;
    }

    //
    else if (_selectedUnit1st == 'Us_gill' &&
        _selectedUnit2nd == 'Imperial_gallons') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.imperial_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gill' &&
        _selectedUnit2nd == 'Us_gallons') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.us_gallons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gill' &&
        _selectedUnit2nd == 'Imperial_pints') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.imperial_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gill' && _selectedUnit2nd == 'Us_pints') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.us_pints;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gill' &&
        _selectedUnit2nd == 'Milliliters') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.milliliters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gill' &&
        _selectedUnit2nd == 'Tablespoons_us') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.tablespoons_us;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gill' &&
        _selectedUnit2nd == 'Australian_tablespoons') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.australian_tablespoons;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gill' && _selectedUnit2nd == 'Cups') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.cups;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gill' &&
        _selectedUnit2nd == 'Cubic_centimeters') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.cubic_centimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gill' &&
        _selectedUnit2nd == 'Cubic_feet') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.cubic_feet;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gill' &&
        _selectedUnit2nd == 'Cubic_inches') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.cubic_inches;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gill' &&
        _selectedUnit2nd == 'Cubic_millimeters') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.cubic_millimeters;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gill' &&
        _selectedUnit2nd == 'Imperial_fluid_ounces') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.imperial_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gill' &&
        _selectedUnit2nd == 'Us_fluid_ounces') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.us_fluid_ounces;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Us_gill' &&
        _selectedUnit2nd == 'Imperial_gill') {
      volume.convert(VOLUME.us_gill, double.parse(_getTextFeildValue));
      unit = volume.imperial_gill;
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
                    Colors.indigoAccent.shade100,
                    Colors.indigo,
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
                        'Volume',
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
                                labelText: 'Enter Length',
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
                              dropdownColor:
                                  Colors.indigoAccent.withOpacity(0.8),
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
                                fontSize: 32, color: Colors.indigoAccent),
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
                              color: Colors.indigoAccent,
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
                                    Colors.indigoAccent)),
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
