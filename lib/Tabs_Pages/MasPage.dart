import 'package:flutter/material.dart';
import 'package:units_converter/units_converter.dart';

class MassPage extends StatefulWidget {
  static final String pageName = '/MassPage';

  @override
  _MassPageState createState() => _MassPageState();
}

//final
class _MassPageState extends State<MassPage> {
  List<String> _selectionUnits = [
    'Grams', //1
    'Ettograms', //2
    'Kilograms', //3
    'Pounds', //4
    'Ounces', //5
    'Quintals', //6
    'Tons', //7
    'Milligrams', //8
    'Uma', //9
    'Carats', //10
    'Centigrams', //11
    'Pennyweights', //12
    'Troy_ounces', //13
    'Stones' //14
  ];

  String _selectedUnit1st = 'Grams';
  String _selectedUnit2nd = 'Ettograms';

  String _getTextFeildValue;
  String _showResult;
  String _showFinalReslut = 'Result';
  Mass mass;
  Unit unit;

  double width;
  double height;

  @override
  void initState() {
    super.initState();
    mass = Mass(removeTrailingZeros: false);
  }

  void calculate() {
    // Seletion to Grams
    //1
    if (_selectedUnit1st == 'Grams' && _selectedUnit2nd == 'Ettograms') {
      mass.convert(MASS.grams, double.parse(_getTextFeildValue));
      unit = mass.ettograms;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Grams' && _selectedUnit2nd == 'Kilograms') {
      mass.convert(MASS.grams, double.parse(_getTextFeildValue));
      unit = mass.kilograms;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Grams' && _selectedUnit2nd == 'Pounds') {
      mass.convert(MASS.grams, double.parse(_getTextFeildValue));
      unit = mass.pounds;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Grams' && _selectedUnit2nd == 'Ounces') {
      mass.convert(MASS.grams, double.parse(_getTextFeildValue));
      unit = mass.ounces;
      _showResult = unit.stringValue;
    }
    //5
    else if (_selectedUnit1st == 'Grams' && _selectedUnit2nd == 'Quintals') {
      mass.convert(MASS.grams, double.parse(_getTextFeildValue));
      unit = mass.quintals;
      _showResult = unit.stringValue;
    }
    //6
    else if (_selectedUnit1st == 'Grams' && _selectedUnit2nd == 'Tons') {
      mass.convert(MASS.grams, double.parse(_getTextFeildValue));
      unit = mass.tons;
      _showResult = unit.stringValue;
    }
    //7
    else if (_selectedUnit1st == 'Grams' && _selectedUnit2nd == 'Milligrams') {
      mass.convert(MASS.grams, double.parse(_getTextFeildValue));
      unit = mass.milligrams;
      _showResult = unit.stringValue;
    }
    //8
    else if (_selectedUnit1st == 'Grams' && _selectedUnit2nd == 'Uma') {
      mass.convert(MASS.grams, double.parse(_getTextFeildValue));
      unit = mass.uma;
      _showResult = unit.stringValue;
    }
    //9
    else if (_selectedUnit1st == 'Grams' && _selectedUnit2nd == 'Carats') {
      mass.convert(MASS.grams, double.parse(_getTextFeildValue));
      unit = mass.carats;
      _showResult = unit.stringValue;
    }
    //10
    else if (_selectedUnit1st == 'Grams' && _selectedUnit2nd == 'Centigrams') {
      mass.convert(MASS.grams, double.parse(_getTextFeildValue));
      unit = mass.centigrams;
      _showResult = unit.stringValue;
    }
    //11
    else if (_selectedUnit1st == 'Grams' &&
        _selectedUnit2nd == 'Pennyweights') {
      mass.convert(MASS.grams, double.parse(_getTextFeildValue));
      unit = mass.pennyweights;
      _showResult = unit.stringValue;
    }
    //12
    else if (_selectedUnit1st == 'Grams' && _selectedUnit2nd == 'Troy_ounces') {
      mass.convert(MASS.grams, double.parse(_getTextFeildValue));
      unit = mass.troy_ounces;
      _showResult = unit.stringValue;
    }
    //13
    else if (_selectedUnit1st == 'Grams' && _selectedUnit2nd == 'Stones') {
      mass.convert(MASS.grams, double.parse(_getTextFeildValue));
      unit = mass.stones;
      _showResult = unit.stringValue;
    }
    //------------------------------------------------------------------------------------------
    // Seletion to Ettograms
    //1
    else if (_selectedUnit1st == 'Ettograms' && _selectedUnit2nd == 'Grams') {
      mass.convert(MASS.ettograms, double.parse(_getTextFeildValue));
      unit = mass.centigrams;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Ettograms' &&
        _selectedUnit2nd == 'Kilograms') {
      mass.convert(MASS.ettograms, double.parse(_getTextFeildValue));
      unit = mass.kilograms;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Ettograms' && _selectedUnit2nd == 'Pounds') {
      mass.convert(MASS.ettograms, double.parse(_getTextFeildValue));
      unit = mass.pounds;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Ettograms' && _selectedUnit2nd == 'Ounces') {
      mass.convert(MASS.ettograms, double.parse(_getTextFeildValue));
      unit = mass.ounces;
      _showResult = unit.stringValue;
    }
    //5
    else if (_selectedUnit1st == 'Ettograms' &&
        _selectedUnit2nd == 'Quintals') {
      mass.convert(MASS.ettograms, double.parse(_getTextFeildValue));
      unit = mass.quintals;
      _showResult = unit.stringValue;
    }
    //6
    else if (_selectedUnit1st == 'Ettograms' && _selectedUnit2nd == 'Tons') {
      mass.convert(MASS.ettograms, double.parse(_getTextFeildValue));
      unit = mass.tons;
      _showResult = unit.stringValue;
    }
    //7
    else if (_selectedUnit1st == 'Ettograms' &&
        _selectedUnit2nd == 'Milligrams') {
      mass.convert(MASS.ettograms, double.parse(_getTextFeildValue));
      unit = mass.milligrams;
      _showResult = unit.stringValue;
    }
    //8
    else if (_selectedUnit1st == 'Ettograms' && _selectedUnit2nd == 'Uma') {
      mass.convert(MASS.ettograms, double.parse(_getTextFeildValue));
      unit = mass.uma;
      _showResult = unit.stringValue;
    }
    //9
    else if (_selectedUnit1st == 'Ettograms' && _selectedUnit2nd == 'Carats') {
      mass.convert(MASS.ettograms, double.parse(_getTextFeildValue));
      unit = mass.carats;
      _showResult = unit.stringValue;
    }
    //10
    else if (_selectedUnit1st == 'Ettograms' &&
        _selectedUnit2nd == 'Centigrams') {
      mass.convert(MASS.ettograms, double.parse(_getTextFeildValue));
      unit = mass.centigrams;
      _showResult = unit.stringValue;
    }
    //11
    else if (_selectedUnit1st == 'Ettograms' &&
        _selectedUnit2nd == 'Pennyweights') {
      mass.convert(MASS.ettograms, double.parse(_getTextFeildValue));
      unit = mass.pennyweights;
      _showResult = unit.stringValue;
    }
    //12
    else if (_selectedUnit1st == 'Ettograms' &&
        _selectedUnit2nd == 'Troy_ounces') {
      mass.convert(MASS.ettograms, double.parse(_getTextFeildValue));
      unit = mass.troy_ounces;
      _showResult = unit.stringValue;
    }
    //13
    else if (_selectedUnit1st == 'Ettograms' && _selectedUnit2nd == 'Stones') {
      mass.convert(MASS.ettograms, double.parse(_getTextFeildValue));
      unit = mass.stones;
      _showResult = unit.stringValue;
    }
    //------------------------------------------------------------------------------------------
    // Seletion to Kilograms
    //1
    else if (_selectedUnit1st == 'Kilograms' && _selectedUnit2nd == 'Grams') {
      mass.convert(MASS.kilograms, double.parse(_getTextFeildValue));
      unit = mass.grams;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Kilograms' &&
        _selectedUnit2nd == 'Ettograms') {
      mass.convert(MASS.kilograms, double.parse(_getTextFeildValue));
      unit = mass.ettograms;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Kilograms' && _selectedUnit2nd == 'Pounds') {
      mass.convert(MASS.kilograms, double.parse(_getTextFeildValue));
      unit = mass.pounds;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Kilograms' && _selectedUnit2nd == 'Ounces') {
      mass.convert(MASS.kilograms, double.parse(_getTextFeildValue));
      unit = mass.ounces;
      _showResult = unit.stringValue;
    }
    //5
    else if (_selectedUnit1st == 'Kilograms' &&
        _selectedUnit2nd == 'Quintals') {
      mass.convert(MASS.kilograms, double.parse(_getTextFeildValue));
      unit = mass.quintals;
      _showResult = unit.stringValue;
    }
    //6
    else if (_selectedUnit1st == 'Kilograms' && _selectedUnit2nd == 'Tons') {
      mass.convert(MASS.kilograms, double.parse(_getTextFeildValue));
      unit = mass.tons;
      _showResult = unit.stringValue;
    }
    //7
    else if (_selectedUnit1st == 'Kilograms' &&
        _selectedUnit2nd == 'Milligrams') {
      mass.convert(MASS.kilograms, double.parse(_getTextFeildValue));
      unit = mass.milligrams;
      _showResult = unit.stringValue;
    }
    //8
    else if (_selectedUnit1st == 'Kilograms' && _selectedUnit2nd == 'Uma') {
      mass.convert(MASS.kilograms, double.parse(_getTextFeildValue));
      unit = mass.uma;
      _showResult = unit.stringValue;
    }
    //9
    else if (_selectedUnit1st == 'Kilograms' && _selectedUnit2nd == 'Carats') {
      mass.convert(MASS.kilograms, double.parse(_getTextFeildValue));
      unit = mass.carats;
      _showResult = unit.stringValue;
    }
    //10
    else if (_selectedUnit1st == 'Kilograms' &&
        _selectedUnit2nd == 'Centigrams') {
      mass.convert(MASS.kilograms, double.parse(_getTextFeildValue));
      unit = mass.centigrams;
      _showResult = unit.stringValue;
    }
    //11
    else if (_selectedUnit1st == 'Kilograms' &&
        _selectedUnit2nd == 'Pennyweights') {
      mass.convert(MASS.kilograms, double.parse(_getTextFeildValue));
      unit = mass.pennyweights;
      _showResult = unit.stringValue;
    }
    //12
    else if (_selectedUnit1st == 'Kilograms' &&
        _selectedUnit2nd == 'Troy_ounces') {
      mass.convert(MASS.kilograms, double.parse(_getTextFeildValue));
      unit = mass.troy_ounces;
      _showResult = unit.stringValue;
    }
    //13
    else if (_selectedUnit1st == 'Kilograms' && _selectedUnit2nd == 'Stones') {
      mass.convert(MASS.kilograms, double.parse(_getTextFeildValue));
      unit = mass.stones;
      _showResult = unit.stringValue;
    }
    //end
    //------------------------------------------------------------------------------------------
    // Selection to Pounds
    //1
    else if (_selectedUnit1st == 'Pounds' && _selectedUnit2nd == 'Grams') {
      mass.convert(MASS.pounds, double.parse(_getTextFeildValue));
      unit = mass.grams;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Pounds' && _selectedUnit2nd == 'Ettograms') {
      mass.convert(MASS.pounds, double.parse(_getTextFeildValue));
      unit = mass.ettograms;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Pounds' && _selectedUnit2nd == 'Kilograms') {
      mass.convert(MASS.pounds, double.parse(_getTextFeildValue));
      unit = mass.kilograms;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Pounds' && _selectedUnit2nd == 'Ounces') {
      mass.convert(MASS.pounds, double.parse(_getTextFeildValue));
      unit = mass.ounces;
      _showResult = unit.stringValue;
    }
    //5
    else if (_selectedUnit1st == 'Pounds' && _selectedUnit2nd == 'Quintals') {
      mass.convert(MASS.pounds, double.parse(_getTextFeildValue));
      unit = mass.quintals;
      _showResult = unit.stringValue;
    }
    //6
    else if (_selectedUnit1st == 'Pounds' && _selectedUnit2nd == 'Tons') {
      mass.convert(MASS.pounds, double.parse(_getTextFeildValue));
      unit = mass.tons;
      _showResult = unit.stringValue;
    }
    //7
    else if (_selectedUnit1st == 'Pounds' && _selectedUnit2nd == 'Milligrams') {
      mass.convert(MASS.pounds, double.parse(_getTextFeildValue));
      unit = mass.milligrams;
      _showResult = unit.stringValue;
    }
    //8
    else if (_selectedUnit1st == 'Pounds' && _selectedUnit2nd == 'Uma') {
      mass.convert(MASS.pounds, double.parse(_getTextFeildValue));
      unit = mass.uma;
      _showResult = unit.stringValue;
    }
    //9
    else if (_selectedUnit1st == 'Pounds' && _selectedUnit2nd == 'Carats') {
      mass.convert(MASS.pounds, double.parse(_getTextFeildValue));
      unit = mass.carats;
      _showResult = unit.stringValue;
    }
    //10
    else if (_selectedUnit1st == 'Pounds' && _selectedUnit2nd == 'Centigrams') {
      mass.convert(MASS.pounds, double.parse(_getTextFeildValue));
      unit = mass.centigrams;
      _showResult = unit.stringValue;
    }
    //11
    else if (_selectedUnit1st == 'Pounds' &&
        _selectedUnit2nd == 'Pennyweights') {
      mass.convert(MASS.pounds, double.parse(_getTextFeildValue));
      unit = mass.pennyweights;
      _showResult = unit.stringValue;
    }
    //12
    else if (_selectedUnit1st == 'Pounds' &&
        _selectedUnit2nd == 'Troy_ounces') {
      mass.convert(MASS.pounds, double.parse(_getTextFeildValue));
      unit = mass.troy_ounces;
      _showResult = unit.stringValue;
    }
    //13
    else if (_selectedUnit1st == 'Pounds' && _selectedUnit2nd == 'Stones') {
      mass.convert(MASS.pounds, double.parse(_getTextFeildValue));
      unit = mass.stones;
      _showResult = unit.stringValue;
    }
    //end
    // ------------------------------------------------------------------------------------------
    // selection to Ounces
    //1
    else if (_selectedUnit1st == 'Ounces' && _selectedUnit2nd == 'Grams') {
      mass.convert(MASS.ounces, double.parse(_getTextFeildValue));
      unit = mass.grams;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Ounces' && _selectedUnit2nd == 'Ettograms') {
      mass.convert(MASS.ounces, double.parse(_getTextFeildValue));
      unit = mass.ettograms;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Ounces' && _selectedUnit2nd == 'Kilograms') {
      mass.convert(MASS.ounces, double.parse(_getTextFeildValue));
      unit = mass.kilograms;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Ounces' && _selectedUnit2nd == 'Pounds') {
      mass.convert(MASS.ounces, double.parse(_getTextFeildValue));
      unit = mass.pounds;
      _showResult = unit.stringValue;
    }
    //5
    else if (_selectedUnit1st == 'Ounces' && _selectedUnit2nd == 'Quintals') {
      mass.convert(MASS.ounces, double.parse(_getTextFeildValue));
      unit = mass.quintals;
      _showResult = unit.stringValue;
    }
    //6
    else if (_selectedUnit1st == 'Ounces' && _selectedUnit2nd == 'Tons') {
      mass.convert(MASS.ounces, double.parse(_getTextFeildValue));
      unit = mass.tons;
      _showResult = unit.stringValue;
    }
    //7
    else if (_selectedUnit1st == 'Ounces' && _selectedUnit2nd == 'Milligrams') {
      mass.convert(MASS.ounces, double.parse(_getTextFeildValue));
      unit = mass.milligrams;
      _showResult = unit.stringValue;
    }
    //8
    else if (_selectedUnit1st == 'Ounces' && _selectedUnit2nd == 'Uma') {
      mass.convert(MASS.ounces, double.parse(_getTextFeildValue));
      unit = mass.uma;
      _showResult = unit.stringValue;
    }
    //9
    else if (_selectedUnit1st == 'Ounces' && _selectedUnit2nd == 'Carats') {
      mass.convert(MASS.ounces, double.parse(_getTextFeildValue));
      unit = mass.carats;
      _showResult = unit.stringValue;
    }
    //10
    else if (_selectedUnit1st == 'Ounces' && _selectedUnit2nd == 'Centigrams') {
      mass.convert(MASS.ounces, double.parse(_getTextFeildValue));
      unit = mass.centigrams;
      _showResult = unit.stringValue;
    }
    //11
    else if (_selectedUnit1st == 'Ounces' &&
        _selectedUnit2nd == 'Pennyweights') {
      mass.convert(MASS.ounces, double.parse(_getTextFeildValue));
      unit = mass.pennyweights;
      _showResult = unit.stringValue;
    }
    //12
    else if (_selectedUnit1st == 'Ounces' &&
        _selectedUnit2nd == 'Troy_ounces') {
      mass.convert(MASS.ounces, double.parse(_getTextFeildValue));
      unit = mass.troy_ounces;
      _showResult = unit.stringValue;
    }
    //13
    else if (_selectedUnit1st == 'Ounces' && _selectedUnit2nd == 'Stones') {
      mass.convert(MASS.ounces, double.parse(_getTextFeildValue));
      unit = mass.stones;
      _showResult = unit.stringValue;
    }
    // end
    //------------------------------------------------------------------------------------------
    // Selection to Quintals
    //1
    else if (_selectedUnit1st == 'Quintals' && _selectedUnit2nd == 'Grams') {
      mass.convert(MASS.quintals, double.parse(_getTextFeildValue));
      unit = mass.grams;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Quintals' &&
        _selectedUnit2nd == 'Ettograms') {
      mass.convert(MASS.quintals, double.parse(_getTextFeildValue));
      unit = mass.ettograms;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Quintals' &&
        _selectedUnit2nd == 'Kilograms') {
      mass.convert(MASS.quintals, double.parse(_getTextFeildValue));
      unit = mass.kilograms;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Quintals' && _selectedUnit2nd == 'Pounds') {
      mass.convert(MASS.quintals, double.parse(_getTextFeildValue));
      unit = mass.pounds;
      _showResult = unit.stringValue;
    }
    //5
    else if (_selectedUnit1st == 'Quintals' && _selectedUnit2nd == 'Ounces') {
      mass.convert(MASS.quintals, double.parse(_getTextFeildValue));
      unit = mass.ounces;
      _showResult = unit.stringValue;
    }
    //6
    else if (_selectedUnit1st == 'Quintals' && _selectedUnit2nd == 'Tons') {
      mass.convert(MASS.quintals, double.parse(_getTextFeildValue));
      unit = mass.tons;
      _showResult = unit.stringValue;
    }
    //7
    else if (_selectedUnit1st == 'Quintals' &&
        _selectedUnit2nd == 'Milligrams') {
      mass.convert(MASS.quintals, double.parse(_getTextFeildValue));
      unit = mass.milligrams;
      _showResult = unit.stringValue;
    }
    //8
    else if (_selectedUnit1st == 'Quintals' && _selectedUnit2nd == 'Uma') {
      mass.convert(MASS.quintals, double.parse(_getTextFeildValue));
      unit = mass.uma;
      _showResult = unit.stringValue;
    }
    //9
    else if (_selectedUnit1st == 'Quintals' && _selectedUnit2nd == 'Carats') {
      mass.convert(MASS.quintals, double.parse(_getTextFeildValue));
      unit = mass.carats;
      _showResult = unit.stringValue;
    }
    //10
    else if (_selectedUnit1st == 'Quintals' &&
        _selectedUnit2nd == 'Centigrams') {
      mass.convert(MASS.quintals, double.parse(_getTextFeildValue));
      unit = mass.centigrams;
      _showResult = unit.stringValue;
    }
    //11
    else if (_selectedUnit1st == 'Quintals' &&
        _selectedUnit2nd == 'Pennyweights') {
      mass.convert(MASS.quintals, double.parse(_getTextFeildValue));
      unit = mass.pennyweights;
      _showResult = unit.stringValue;
    }
    //12
    else if (_selectedUnit1st == 'Quintals' &&
        _selectedUnit2nd == 'Troy_ounces') {
      mass.convert(MASS.quintals, double.parse(_getTextFeildValue));
      unit = mass.troy_ounces;
      _showResult = unit.stringValue;
    }
    //13
    else if (_selectedUnit1st == 'Quintals' && _selectedUnit2nd == 'Stones') {
      mass.convert(MASS.quintals, double.parse(_getTextFeildValue));
      unit = mass.stones;
      _showResult = unit.stringValue;
    }
    //end
    //------------------------------------------------------------------------------------------
    // Selection to tons
    //1
    else if (_selectedUnit1st == 'Tons' && _selectedUnit2nd == 'Grams') {
      mass.convert(MASS.tons, double.parse(_getTextFeildValue));
      unit = mass.grams;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Tons' && _selectedUnit2nd == 'Ettograms') {
      mass.convert(MASS.tons, double.parse(_getTextFeildValue));
      unit = mass.ettograms;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Tons' && _selectedUnit2nd == 'Kilograms') {
      mass.convert(MASS.tons, double.parse(_getTextFeildValue));
      unit = mass.kilograms;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Tons' && _selectedUnit2nd == 'Pounds') {
      mass.convert(MASS.tons, double.parse(_getTextFeildValue));
      unit = mass.pounds;
      _showResult = unit.stringValue;
    }
    //5
    else if (_selectedUnit1st == 'Tons' && _selectedUnit2nd == 'Ounces') {
      mass.convert(MASS.tons, double.parse(_getTextFeildValue));
      unit = mass.ounces;
      _showResult = unit.stringValue;
    }
    //6
    else if (_selectedUnit1st == 'Tons' && _selectedUnit2nd == 'Quintals') {
      mass.convert(MASS.tons, double.parse(_getTextFeildValue));
      unit = mass.quintals;
      _showResult = unit.stringValue;
    }
    //7
    else if (_selectedUnit1st == 'Tons' && _selectedUnit2nd == 'Milligrams') {
      mass.convert(MASS.tons, double.parse(_getTextFeildValue));
      unit = mass.milligrams;
      _showResult = unit.stringValue;
    }
    //8
    else if (_selectedUnit1st == 'Tons' && _selectedUnit2nd == 'Uma') {
      mass.convert(MASS.tons, double.parse(_getTextFeildValue));
      unit = mass.uma;
      _showResult = unit.stringValue;
    }
    //9
    else if (_selectedUnit1st == 'Tons' && _selectedUnit2nd == 'Carats') {
      mass.convert(MASS.tons, double.parse(_getTextFeildValue));
      unit = mass.carats;
      _showResult = unit.stringValue;
    }
    //10
    else if (_selectedUnit1st == 'Tons' && _selectedUnit2nd == 'Centigrams') {
      mass.convert(MASS.tons, double.parse(_getTextFeildValue));
      unit = mass.centigrams;
      _showResult = unit.stringValue;
    }
    //11
    else if (_selectedUnit1st == 'Tons' && _selectedUnit2nd == 'Pennyweights') {
      mass.convert(MASS.tons, double.parse(_getTextFeildValue));
      unit = mass.pennyweights;
      _showResult = unit.stringValue;
    }
    //12
    else if (_selectedUnit1st == 'Tons' && _selectedUnit2nd == 'Troy_ounces') {
      mass.convert(MASS.tons, double.parse(_getTextFeildValue));
      unit = mass.troy_ounces;
      _showResult = unit.stringValue;
    }
    //13
    else if (_selectedUnit1st == 'Tons' && _selectedUnit2nd == 'Stones') {
      mass.convert(MASS.tons, double.parse(_getTextFeildValue));
      unit = mass.stones;
      _showResult = unit.stringValue;
    }
    //end
    // ------------------------------------------------------------------------------------------
    // selection to milligramas
    //1
    else if (_selectedUnit1st == 'Milligrams' && _selectedUnit2nd == 'Grams') {
      mass.convert(MASS.milligrams, double.parse(_getTextFeildValue));
      unit = mass.grams;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Milligrams' &&
        _selectedUnit2nd == 'Ettograms') {
      mass.convert(MASS.milligrams, double.parse(_getTextFeildValue));
      unit = mass.ettograms;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Milligrams' &&
        _selectedUnit2nd == 'Kilograms') {
      mass.convert(MASS.milligrams, double.parse(_getTextFeildValue));
      unit = mass.kilograms;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Milligrams' && _selectedUnit2nd == 'Pounds') {
      mass.convert(MASS.milligrams, double.parse(_getTextFeildValue));
      unit = mass.pounds;
      _showResult = unit.stringValue;
    }
    //5
    else if (_selectedUnit1st == 'Milligrams' && _selectedUnit2nd == 'Ounces') {
      mass.convert(MASS.milligrams, double.parse(_getTextFeildValue));
      unit = mass.ounces;
      _showResult = unit.stringValue;
    }
    //6
    else if (_selectedUnit1st == 'Milligrams' &&
        _selectedUnit2nd == 'Quintals') {
      mass.convert(MASS.milligrams, double.parse(_getTextFeildValue));
      unit = mass.quintals;
      _showResult = unit.stringValue;
    }
    //7
    else if (_selectedUnit1st == 'Milligrams' && _selectedUnit2nd == 'Tons') {
      mass.convert(MASS.milligrams, double.parse(_getTextFeildValue));
      unit = mass.tons;
      _showResult = unit.stringValue;
    }
    //8
    else if (_selectedUnit1st == 'Milligrams' && _selectedUnit2nd == 'Uma') {
      mass.convert(MASS.milligrams, double.parse(_getTextFeildValue));
      unit = mass.uma;
      _showResult = unit.stringValue;
    }
    //9
    else if (_selectedUnit1st == 'Milligrams' && _selectedUnit2nd == 'Carats') {
      mass.convert(MASS.milligrams, double.parse(_getTextFeildValue));
      unit = mass.carats;
      _showResult = unit.stringValue;
    }
    //10
    else if (_selectedUnit1st == 'Milligrams' &&
        _selectedUnit2nd == 'Centigrams') {
      mass.convert(MASS.milligrams, double.parse(_getTextFeildValue));
      unit = mass.centigrams;
      _showResult = unit.stringValue;
    }
    //11
    else if (_selectedUnit1st == 'Milligrams' &&
        _selectedUnit2nd == 'Pennyweights') {
      mass.convert(MASS.milligrams, double.parse(_getTextFeildValue));
      unit = mass.pennyweights;
      _showResult = unit.stringValue;
    } //12
    else if (_selectedUnit1st == 'Milligrams' &&
        _selectedUnit2nd == 'Troy_ounces') {
      mass.convert(MASS.milligrams, double.parse(_getTextFeildValue));
      unit = mass.troy_ounces;
      _showResult = unit.stringValue;
    } //13
    else if (_selectedUnit1st == 'Milligrams' && _selectedUnit2nd == 'Stones') {
      mass.convert(MASS.milligrams, double.parse(_getTextFeildValue));
      unit = mass.stones;
      _showResult = unit.stringValue;
    }
    //end
    //------------------------------------------------------------------------------------------
    // selection to uma
    //1
    else if (_selectedUnit1st == 'Uma' && _selectedUnit2nd == 'Grams') {
      mass.convert(MASS.uma, double.parse(_getTextFeildValue));
      unit = mass.grams;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Uma' && _selectedUnit2nd == 'Ettograms') {
      mass.convert(MASS.uma, double.parse(_getTextFeildValue));
      unit = mass.ettograms;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Uma' && _selectedUnit2nd == 'Kilograms') {
      mass.convert(MASS.uma, double.parse(_getTextFeildValue));
      unit = mass.kilograms;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Uma' && _selectedUnit2nd == 'Pounds') {
      mass.convert(MASS.uma, double.parse(_getTextFeildValue));
      unit = mass.pounds;
      _showResult = unit.stringValue;
    }
    //5
    else if (_selectedUnit1st == 'Uma' && _selectedUnit2nd == 'Ounces') {
      mass.convert(MASS.uma, double.parse(_getTextFeildValue));
      unit = mass.ounces;
      _showResult = unit.stringValue;
    }
    //6
    else if (_selectedUnit1st == 'Uma' && _selectedUnit2nd == 'Quintals') {
      mass.convert(MASS.uma, double.parse(_getTextFeildValue));
      unit = mass.quintals;
      _showResult = unit.stringValue;
    }
    //7
    else if (_selectedUnit1st == 'Uma' && _selectedUnit2nd == 'Tons') {
      mass.convert(MASS.uma, double.parse(_getTextFeildValue));
      unit = mass.tons;
      _showResult = unit.stringValue;
    }
    //8
    else if (_selectedUnit1st == 'Uma' && _selectedUnit2nd == 'Milligrams') {
      mass.convert(MASS.uma, double.parse(_getTextFeildValue));
      unit = mass.milligrams;
      _showResult = unit.stringValue;
    }
    //9
    else if (_selectedUnit1st == 'Uma' && _selectedUnit2nd == 'Carats') {
      mass.convert(MASS.uma, double.parse(_getTextFeildValue));
      unit = mass.carats;
      _showResult = unit.stringValue;
    }
    //10
    else if (_selectedUnit1st == 'Uma' && _selectedUnit2nd == 'Centigrams') {
      mass.convert(MASS.uma, double.parse(_getTextFeildValue));
      unit = mass.centigrams;
      _showResult = unit.stringValue;
    }
    //11
    else if (_selectedUnit1st == 'Uma' && _selectedUnit2nd == 'Pennyweights') {
      mass.convert(MASS.uma, double.parse(_getTextFeildValue));
      unit = mass.pennyweights;
      _showResult = unit.stringValue;
    }
    //12
    else if (_selectedUnit1st == 'Uma' && _selectedUnit2nd == 'Troy_ounces') {
      mass.convert(MASS.uma, double.parse(_getTextFeildValue));
      unit = mass.troy_ounces;
      _showResult = unit.stringValue;
    }
    //13
    else if (_selectedUnit1st == 'Uma' && _selectedUnit2nd == 'Stones') {
      mass.convert(MASS.uma, double.parse(_getTextFeildValue));
      unit = mass.stones;
      _showResult = unit.stringValue;
    }
//------------------------------------------------------------------------------------------
    // selection to carats
    //1
    else if (_selectedUnit1st == 'Carats' && _selectedUnit2nd == 'Grams') {
      mass.convert(MASS.carats, double.parse(_getTextFeildValue));
      unit = mass.grams;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Carats' && _selectedUnit2nd == 'Ettograms') {
      mass.convert(MASS.carats, double.parse(_getTextFeildValue));
      unit = mass.ettograms;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Carats' && _selectedUnit2nd == 'Kilograms') {
      mass.convert(MASS.carats, double.parse(_getTextFeildValue));
      unit = mass.kilograms;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Carats' && _selectedUnit2nd == 'Pounds') {
      mass.convert(MASS.carats, double.parse(_getTextFeildValue));
      unit = mass.pounds;
      _showResult = unit.stringValue;
    }
    //5
    else if (_selectedUnit1st == 'Carats' && _selectedUnit2nd == 'Ounces') {
      mass.convert(MASS.carats, double.parse(_getTextFeildValue));
      unit = mass.ounces;
      _showResult = unit.stringValue;
    }
    //6
    else if (_selectedUnit1st == 'Carats' && _selectedUnit2nd == 'Quintals') {
      mass.convert(MASS.carats, double.parse(_getTextFeildValue));
      unit = mass.quintals;
      _showResult = unit.stringValue;
    }
    //7
    else if (_selectedUnit1st == 'Carats' && _selectedUnit2nd == 'Tons') {
      mass.convert(MASS.carats, double.parse(_getTextFeildValue));
      unit = mass.tons;
      _showResult = unit.stringValue;
    }
    //8
    else if (_selectedUnit1st == 'Carats' && _selectedUnit2nd == 'Milligrams') {
      mass.convert(MASS.carats, double.parse(_getTextFeildValue));
      unit = mass.milligrams;
      _showResult = unit.stringValue;
    }
    //9
    else if (_selectedUnit1st == 'Carats' && _selectedUnit2nd == 'Uma') {
      mass.convert(MASS.carats, double.parse(_getTextFeildValue));
      unit = mass.uma;
      _showResult = unit.stringValue;
    }
    //10
    else if (_selectedUnit1st == 'Carats' && _selectedUnit2nd == 'Centigrams') {
      mass.convert(MASS.carats, double.parse(_getTextFeildValue));
      unit = mass.centigrams;
      _showResult = unit.stringValue;
    }
    //11
    else if (_selectedUnit1st == 'Carats' &&
        _selectedUnit2nd == 'Pennyweights') {
      mass.convert(MASS.carats, double.parse(_getTextFeildValue));
      unit = mass.pennyweights;
      _showResult = unit.stringValue;
    }
    //12
    else if (_selectedUnit1st == 'Carats' &&
        _selectedUnit2nd == 'Troy_ounces') {
      mass.convert(MASS.carats, double.parse(_getTextFeildValue));
      unit = mass.troy_ounces;
      _showResult = unit.stringValue;
    }
    //13
    else if (_selectedUnit1st == 'Carats' && _selectedUnit2nd == 'Stones') {
      mass.convert(MASS.carats, double.parse(_getTextFeildValue));
      unit = mass.stones;
      _showResult = unit.stringValue;
    }
    //end
//------------------------------------------------------------------------------------------
    //selection to centigrams
    //1
    else if (_selectedUnit1st == 'Centigrams' && _selectedUnit2nd == 'Grams') {
      mass.convert(MASS.centigrams, double.parse(_getTextFeildValue));
      unit = mass.grams;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Centigrams' &&
        _selectedUnit2nd == 'Ettograms') {
      mass.convert(MASS.centigrams, double.parse(_getTextFeildValue));
      unit = mass.ettograms;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Centigrams' &&
        _selectedUnit2nd == 'Kilograms') {
      mass.convert(MASS.centigrams, double.parse(_getTextFeildValue));
      unit = mass.kilograms;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Centigrams' && _selectedUnit2nd == 'Pounds') {
      mass.convert(MASS.centigrams, double.parse(_getTextFeildValue));
      unit = mass.pounds;
      _showResult = unit.stringValue;
    }
    //5
    else if (_selectedUnit1st == 'Centigrams' && _selectedUnit2nd == 'Ounces') {
      mass.convert(MASS.centigrams, double.parse(_getTextFeildValue));
      unit = mass.ounces;
      _showResult = unit.stringValue;
    }
    //6
    else if (_selectedUnit1st == 'Centigrams' &&
        _selectedUnit2nd == 'Quintals') {
      mass.convert(MASS.centigrams, double.parse(_getTextFeildValue));
      unit = mass.quintals;
      _showResult = unit.stringValue;
    }
    //7
    else if (_selectedUnit1st == 'Centigrams' && _selectedUnit2nd == 'Tons') {
      mass.convert(MASS.centigrams, double.parse(_getTextFeildValue));
      unit = mass.tons;
      _showResult = unit.stringValue;
    }
    //8
    else if (_selectedUnit1st == 'Centigrams' &&
        _selectedUnit2nd == 'Milligrams') {
      mass.convert(MASS.centigrams, double.parse(_getTextFeildValue));
      unit = mass.milligrams;
      _showResult = unit.stringValue;
    }
    //9
    else if (_selectedUnit1st == 'Centigrams' && _selectedUnit2nd == 'Uma') {
      mass.convert(MASS.centigrams, double.parse(_getTextFeildValue));
      unit = mass.uma;
      _showResult = unit.stringValue;
    }
    //10
    else if (_selectedUnit1st == 'Centigrams' && _selectedUnit2nd == 'Carats') {
      mass.convert(MASS.centigrams, double.parse(_getTextFeildValue));
      unit = mass.carats;
      _showResult = unit.stringValue;
    }
    //11
    else if (_selectedUnit1st == 'Centigrams' &&
        _selectedUnit2nd == 'Pennyweights') {
      mass.convert(MASS.centigrams, double.parse(_getTextFeildValue));
      unit = mass.pennyweights;
      _showResult = unit.stringValue;
    }
    //12
    else if (_selectedUnit1st == 'Centigrams' &&
        _selectedUnit2nd == 'Troy_ounces') {
      mass.convert(MASS.centigrams, double.parse(_getTextFeildValue));
      unit = mass.troy_ounces;
      _showResult = unit.stringValue;
    }
    //13
    else if (_selectedUnit1st == 'Centigrams' && _selectedUnit2nd == 'Stones') {
      mass.convert(MASS.centigrams, double.parse(_getTextFeildValue));
      unit = mass.stones;
      _showResult = unit.stringValue;
    }
    //end
//------------------------------------------------------------------------------------------
    //selection to pennyweights
    //1
    else if (_selectedUnit1st == 'Pennyweights' &&
        _selectedUnit2nd == 'Grams') {
      mass.convert(MASS.pennyweights, double.parse(_getTextFeildValue));
      unit = mass.grams;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Pennyweights' &&
        _selectedUnit2nd == 'Ettograms') {
      mass.convert(MASS.pennyweights, double.parse(_getTextFeildValue));
      unit = mass.ettograms;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Pennyweights' &&
        _selectedUnit2nd == 'Kilograms') {
      mass.convert(MASS.pennyweights, double.parse(_getTextFeildValue));
      unit = mass.kilograms;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Pennyweights' &&
        _selectedUnit2nd == 'Pounds') {
      mass.convert(MASS.pennyweights, double.parse(_getTextFeildValue));
      unit = mass.pounds;
      _showResult = unit.stringValue;
    }
    //5
    else if (_selectedUnit1st == 'Pennyweights' &&
        _selectedUnit2nd == 'Ounces') {
      mass.convert(MASS.pennyweights, double.parse(_getTextFeildValue));
      unit = mass.ounces;
      _showResult = unit.stringValue;
    }
    //6
    else if (_selectedUnit1st == 'Pennyweights' &&
        _selectedUnit2nd == 'Quintals') {
      mass.convert(MASS.pennyweights, double.parse(_getTextFeildValue));
      unit = mass.quintals;
      _showResult = unit.stringValue;
    }
    //7
    else if (_selectedUnit1st == 'Pennyweights' && _selectedUnit2nd == 'Tons') {
      mass.convert(MASS.pennyweights, double.parse(_getTextFeildValue));
      unit = mass.tons;
      _showResult = unit.stringValue;
    }
    //8
    else if (_selectedUnit1st == 'Pennyweights' &&
        _selectedUnit2nd == 'Milligrams') {
      mass.convert(MASS.pennyweights, double.parse(_getTextFeildValue));
      unit = mass.milligrams;
      _showResult = unit.stringValue;
    }
    //9
    else if (_selectedUnit1st == 'Pennyweights' && _selectedUnit2nd == 'Uma') {
      mass.convert(MASS.pennyweights, double.parse(_getTextFeildValue));
      unit = mass.uma;
      _showResult = unit.stringValue;
    }
    //10
    else if (_selectedUnit1st == 'Pennyweights' &&
        _selectedUnit2nd == 'Carats') {
      mass.convert(MASS.pennyweights, double.parse(_getTextFeildValue));
      unit = mass.carats;
      _showResult = unit.stringValue;
    }
    //11
    else if (_selectedUnit1st == 'Pennyweights' &&
        _selectedUnit2nd == 'Centigrams') {
      mass.convert(MASS.pennyweights, double.parse(_getTextFeildValue));
      unit = mass.centigrams;
      _showResult = unit.stringValue;
    }
    //12
    else if (_selectedUnit1st == 'Pennyweights' &&
        _selectedUnit2nd == 'Troy_ounces') {
      mass.convert(MASS.pennyweights, double.parse(_getTextFeildValue));
      unit = mass.troy_ounces;
      _showResult = unit.stringValue;
    }
    //13
    else if (_selectedUnit1st == 'Pennyweights' &&
        _selectedUnit2nd == 'Stones') {
      mass.convert(MASS.pennyweights, double.parse(_getTextFeildValue));
      unit = mass.stones;
      _showResult = unit.stringValue;
    }
    //end
    //-----------------------------------------------------------

    //selection to troy ounces
    //1
    else if (_selectedUnit1st == 'Troy_ounces' && _selectedUnit2nd == 'Grams') {
      mass.convert(MASS.troy_ounces, double.parse(_getTextFeildValue));
      unit = mass.grams;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Troy_ounces' &&
        _selectedUnit2nd == 'Ettograms') {
      mass.convert(MASS.troy_ounces, double.parse(_getTextFeildValue));
      unit = mass.ettograms;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Troy_ounces' &&
        _selectedUnit2nd == 'Kilograms') {
      mass.convert(MASS.troy_ounces, double.parse(_getTextFeildValue));
      unit = mass.kilograms;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Troy_ounces' &&
        _selectedUnit2nd == 'Pounds') {
      mass.convert(MASS.troy_ounces, double.parse(_getTextFeildValue));
      unit = mass.pounds;
      _showResult = unit.stringValue;
    }
    //5
    else if (_selectedUnit1st == 'Troy_ounces' &&
        _selectedUnit2nd == 'Ounces') {
      mass.convert(MASS.troy_ounces, double.parse(_getTextFeildValue));
      unit = mass.ounces;
      _showResult = unit.stringValue;
    }
    //6
    else if (_selectedUnit1st == 'Troy_ounces' &&
        _selectedUnit2nd == 'Quintals') {
      mass.convert(MASS.troy_ounces, double.parse(_getTextFeildValue));
      unit = mass.quintals;
      _showResult = unit.stringValue;
    }
    //7
    else if (_selectedUnit1st == 'Troy_ounces' && _selectedUnit2nd == 'Tons') {
      mass.convert(MASS.troy_ounces, double.parse(_getTextFeildValue));
      unit = mass.tons;
      _showResult = unit.stringValue;
    }
    //8
    else if (_selectedUnit1st == 'Troy_ounces' &&
        _selectedUnit2nd == 'Milligrams') {
      mass.convert(MASS.troy_ounces, double.parse(_getTextFeildValue));
      unit = mass.milligrams;
      _showResult = unit.stringValue;
    }
    //9
    else if (_selectedUnit1st == 'Troy_ounces' && _selectedUnit2nd == 'Uma') {
      mass.convert(MASS.troy_ounces, double.parse(_getTextFeildValue));
      unit = mass.uma;
      _showResult = unit.stringValue;
    }
    //10
    else if (_selectedUnit1st == 'Troy_ounces' &&
        _selectedUnit2nd == 'Carats') {
      mass.convert(MASS.troy_ounces, double.parse(_getTextFeildValue));
      unit = mass.carats;
      _showResult = unit.stringValue;
    }
    //11
    else if (_selectedUnit1st == 'Troy_ounces' &&
        _selectedUnit2nd == 'Centigrams') {
      mass.convert(MASS.troy_ounces, double.parse(_getTextFeildValue));
      unit = mass.centigrams;
      _showResult = unit.stringValue;
    }
    //12
    else if (_selectedUnit1st == 'Troy_ounces' &&
        _selectedUnit2nd == 'Pennyweights') {
      mass.convert(MASS.troy_ounces, double.parse(_getTextFeildValue));
      unit = mass.pennyweights;
      _showResult = unit.stringValue;
    }
    //13
    else if (_selectedUnit1st == 'Troy_ounces' &&
        _selectedUnit2nd == 'Stones') {
      mass.convert(MASS.troy_ounces, double.parse(_getTextFeildValue));
      unit = mass.stones;
      _showResult = unit.stringValue;
    }
    //end
    //--------------------------------------

    //selection to stones
    //1
    else if (_selectedUnit1st == 'Stones' && _selectedUnit2nd == 'Grams') {
      mass.convert(MASS.stones, double.parse(_getTextFeildValue));
      unit = mass.grams;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Stones' && _selectedUnit2nd == 'Ettograms') {
      mass.convert(MASS.stones, double.parse(_getTextFeildValue));
      unit = mass.ettograms;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Stones' && _selectedUnit2nd == 'Kilograms') {
      mass.convert(MASS.stones, double.parse(_getTextFeildValue));
      unit = mass.kilograms;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Stones' && _selectedUnit2nd == 'Pounds') {
      mass.convert(MASS.stones, double.parse(_getTextFeildValue));
      unit = mass.pounds;
      _showResult = unit.stringValue;
    }
    //5
    else if (_selectedUnit1st == 'Stones' && _selectedUnit2nd == 'Ounces') {
      mass.convert(MASS.stones, double.parse(_getTextFeildValue));
      unit = mass.ounces;
      _showResult = unit.stringValue;
    }
    //6
    else if (_selectedUnit1st == 'Stones' && _selectedUnit2nd == 'Quintals') {
      mass.convert(MASS.stones, double.parse(_getTextFeildValue));
      unit = mass.quintals;
      _showResult = unit.stringValue;
    }
    //7
    else if (_selectedUnit1st == 'Stones' && _selectedUnit2nd == 'Tons') {
      mass.convert(MASS.stones, double.parse(_getTextFeildValue));
      unit = mass.tons;
      _showResult = unit.stringValue;
    }
    //8
    else if (_selectedUnit1st == 'Stones' && _selectedUnit2nd == 'Milligrams') {
      mass.convert(MASS.stones, double.parse(_getTextFeildValue));
      unit = mass.milligrams;
      _showResult = unit.stringValue;
    }
    //9
    else if (_selectedUnit1st == 'Stones' && _selectedUnit2nd == 'Uma') {
      mass.convert(MASS.stones, double.parse(_getTextFeildValue));
      unit = mass.uma;
      _showResult = unit.stringValue;
    }
    //10
    else if (_selectedUnit1st == 'Stones' && _selectedUnit2nd == 'Carats') {
      mass.convert(MASS.stones, double.parse(_getTextFeildValue));
      unit = mass.carats;
      _showResult = unit.stringValue;
    }
    //11
    else if (_selectedUnit1st == 'Stones' && _selectedUnit2nd == 'Centigrams') {
      mass.convert(MASS.stones, double.parse(_getTextFeildValue));
      unit = mass.centigrams;
      _showResult = unit.stringValue;
    }
    //12
    else if (_selectedUnit1st == 'Stones' &&
        _selectedUnit2nd == 'Pennyweights') {
      mass.convert(MASS.stones, double.parse(_getTextFeildValue));
      unit = mass.pennyweights;
      _showResult = unit.stringValue;
    }
    //13
    else if (_selectedUnit1st == 'Stones' &&
        _selectedUnit2nd == 'Troy_ounces') {
      mass.convert(MASS.stones, double.parse(_getTextFeildValue));
      unit = mass.stones;
      _showResult = unit.stringValue;
    }
    //end
    //--------------------------------------

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
                    Colors.purpleAccent.shade100,
                    Colors.purple,
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
                        'Weight',
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
                                labelText: 'Enter Weight',
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
                                  Colors.purpleAccent.withOpacity(0.8),
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
                                fontSize: 32, color: Colors.purpleAccent),
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
                              color: Colors.purpleAccent,
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
                                    Colors.purpleAccent)),
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
