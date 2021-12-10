import 'package:flutter/material.dart';
import 'package:units_converter/units_converter.dart';

class SpeedPage extends StatefulWidget {
  static final String pageName = '/SpeedPage';

  @override
  _SpeedPageState createState() => _SpeedPageState();
}

class _SpeedPageState extends State<SpeedPage> {
  List<String> _selectionUnits = [
    'Meters_per_second',
    'Kilometers_per_hour',
    'Miles_per_hour',
    'Knots',
    'Feets_per_second',
  ]; // Option 2
  String _selectedUnit1st = 'Meters_per_second';
  String _selectedUnit2nd = 'Kilometers_per_hour';
  String _getTextFeildValue;
  String _showResult;
  String _showFinalReslut = 'Result';
  Speed speed;
  Unit unit;

  double width;
  double height;
  @override
  void initState() {
    super.initState();
    speed = Speed(removeTrailingZeros: false);
  }

  void calculate() {
    // selection to Meters_per_second
    //1
    if (_selectedUnit1st == 'Meters_per_second' &&
        _selectedUnit2nd == 'Kilometers_per_hour') {
      speed.convert(SPEED.meters_per_second, double.parse(_getTextFeildValue));
      unit = speed.kilometers_per_hour;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Meters_per_second' &&
        _selectedUnit2nd == 'Miles_per_hour') {
      speed.convert(SPEED.meters_per_second, double.parse(_getTextFeildValue));
      unit = speed.miles_per_hour;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Meters_per_second' &&
        _selectedUnit2nd == 'Knots') {
      speed.convert(SPEED.meters_per_second, double.parse(_getTextFeildValue));
      unit = speed.knots;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Meters_per_second' &&
        _selectedUnit2nd == 'Feets_per_second') {
      speed.convert(SPEED.meters_per_second, double.parse(_getTextFeildValue));
      unit = speed.feets_per_second;
      _showResult = unit.stringValue;
    }
    //end

    //------------------------------------------------------------------------------------------
    // selection to Kilometers_per_hour
    //1
    else if (_selectedUnit1st == 'Kilometers_per_hour' &&
        _selectedUnit2nd == 'Meters_per_second') {
      speed.convert(
          SPEED.kilometers_per_hour, double.parse(_getTextFeildValue));
      unit = speed.meters_per_second;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Kilometers_per_hour' &&
        _selectedUnit2nd == 'Miles_per_hour') {
      speed.convert(
          SPEED.kilometers_per_hour, double.parse(_getTextFeildValue));
      unit = speed.miles_per_hour;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Kilometers_per_hour' &&
        _selectedUnit2nd == 'Knots') {
      speed.convert(
          SPEED.kilometers_per_hour, double.parse(_getTextFeildValue));
      unit = speed.knots;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Kilometers_per_hour' &&
        _selectedUnit2nd == 'Feets_per_second') {
      speed.convert(
          SPEED.kilometers_per_hour, double.parse(_getTextFeildValue));
      unit = speed.feets_per_second;
      _showResult = unit.stringValue;
    }
    //end
    //------------------------------------------------------------------------------------------
    // selection to Miles_per_hour
    //1
    else if (_selectedUnit1st == 'Miles_per_hour' &&
        _selectedUnit2nd == 'Meters_per_second') {
      speed.convert(SPEED.miles_per_hour, double.parse(_getTextFeildValue));
      unit = speed.meters_per_second;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Miles_per_hour' &&
        _selectedUnit2nd == 'Kilometers_per_hour') {
      speed.convert(SPEED.miles_per_hour, double.parse(_getTextFeildValue));
      unit = speed.kilometers_per_hour;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Miles_per_hour' &&
        _selectedUnit2nd == 'Knots') {
      speed.convert(
          SPEED.kilometers_per_hour, double.parse(_getTextFeildValue));
      unit = speed.knots;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Miles_per_hour' &&
        _selectedUnit2nd == 'Feets_per_second') {
      speed.convert(
          SPEED.kilometers_per_hour, double.parse(_getTextFeildValue));
      unit = speed.feets_per_second;
      _showResult = unit.stringValue;
    }
    //end
    //------------------------------------------------------------------------------------------
    // selection to Knots
    //1
    else if (_selectedUnit1st == 'Knots' &&
        _selectedUnit2nd == 'Meters_per_second') {
      speed.convert(SPEED.knots, double.parse(_getTextFeildValue));
      unit = speed.meters_per_second;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Knots' &&
        _selectedUnit2nd == 'Kilometers_per_hour') {
      speed.convert(SPEED.knots, double.parse(_getTextFeildValue));
      unit = speed.kilometers_per_hour;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Knots' &&
        _selectedUnit2nd == 'Miles_per_hour') {
      speed.convert(SPEED.knots, double.parse(_getTextFeildValue));
      unit = speed.miles_per_hour;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Knots' &&
        _selectedUnit2nd == 'Feets_per_second') {
      speed.convert(SPEED.knots, double.parse(_getTextFeildValue));
      unit = speed.feets_per_second;
      _showResult = unit.stringValue;
    }
    //end
    //-----------------------------------------------
    // selection to Miles_per_hour
    //1
    else if (_selectedUnit1st == 'Feets_per_second' &&
        _selectedUnit2nd == 'Meters_per_second') {
      speed.convert(SPEED.feets_per_second, double.parse(_getTextFeildValue));
      unit = speed.meters_per_second;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Feets_per_second' &&
        _selectedUnit2nd == 'Kilometers_per_hour') {
      speed.convert(SPEED.feets_per_second, double.parse(_getTextFeildValue));
      unit = speed.kilometers_per_hour;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Feets_per_second' &&
        _selectedUnit2nd == 'Miles_per_hour') {
      speed.convert(SPEED.feets_per_second, double.parse(_getTextFeildValue));
      unit = speed.miles_per_hour;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Feets_per_second' &&
        _selectedUnit2nd == 'Knots') {
      speed.convert(SPEED.feets_per_second, double.parse(_getTextFeildValue));
      unit = speed.knots;
      _showResult = unit.stringValue;
    }
    //end
//----------------------------------------

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
                    Colors.greenAccent.shade100,
                    Colors.green,
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
                        'Speed',
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
                                  Colors.greenAccent.withOpacity(0.8),
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
                                  _selectedUnit1st = newValue as String;
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
                                fontSize: 32, color: Colors.greenAccent),
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
                              color: Colors.greenAccent,
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
                                    Colors.greenAccent)),
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
