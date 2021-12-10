import 'package:flutter/material.dart';

import 'package:units_converter/units_converter.dart';

class TimePage extends StatefulWidget {
  static final String pageName = '/TimePage';

  @override
  _TimePageState createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  List<String> _selectionUnits = [
    'Seconds',
    'Milliseconds',
    'Microseconds',
    'Nanoseconds',
    'Minutes',
    'Hours',
    'Days',
    'Weeks',
    'Years_365',
  ]; // Option 2
  String _selectedUnit1st = 'Seconds';
  String _selectedUnit2nd = 'Milliseconds';
  String _getTextFeildValue;
  String _showResult;
  String _showFinalReslut = 'Result';
  var time;
  Unit unit;

  double width;
  double height;

  @override
  void initState() {
    super.initState();
    time = Time(removeTrailingZeros: false);
  }

  void calculate() {
    if (_selectedUnit1st == 'Seconds' && _selectedUnit2nd == 'Milliseconds') {
      time.convert(TIME.seconds, double.parse(_getTextFeildValue));
      unit = time.milliseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Seconds' &&
        _selectedUnit2nd == 'Microseconds') {
      time.convert(TIME.seconds, double.parse(_getTextFeildValue));
      unit = time.microseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Seconds' &&
        _selectedUnit2nd == 'Nanoseconds') {
      time.convert(TIME.seconds, double.parse(_getTextFeildValue));
      unit = time.nanoseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Seconds' && _selectedUnit2nd == 'Minutes') {
      time.convert(TIME.seconds, double.parse(_getTextFeildValue));
      unit = time.minutes;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Seconds' && _selectedUnit2nd == 'Hours') {
      time.convert(TIME.seconds, double.parse(_getTextFeildValue));
      unit = time.hours;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Seconds' && _selectedUnit2nd == 'Days') {
      time.convert(TIME.seconds, double.parse(_getTextFeildValue));
      unit = time.days;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Seconds' && _selectedUnit2nd == 'Years_365') {
      time.convert(TIME.seconds, double.parse(_getTextFeildValue));
      unit = time.years_365;
      _showResult = unit.stringValue;
    }
    // //------------------------------------------------------------------------------------------
    else if (_selectedUnit1st == 'Milliseconds' &&
        _selectedUnit2nd == 'Seconds') {
      time.convert(TIME.milliseconds, double.parse(_getTextFeildValue));
      unit = time.seconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliseconds' &&
        _selectedUnit2nd == 'Microseconds') {
      time.convert(TIME.milliseconds, double.parse(_getTextFeildValue));
      unit = time.microseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliseconds' &&
        _selectedUnit2nd == 'Nanoseconds') {
      time.convert(TIME.milliseconds, double.parse(_getTextFeildValue));
      unit = time.nanoseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliseconds' &&
        _selectedUnit2nd == 'Minutes') {
      time.convert(TIME.milliseconds, double.parse(_getTextFeildValue));
      unit = time.minutes;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliseconds' &&
        _selectedUnit2nd == 'Hours') {
      time.convert(TIME.milliseconds, double.parse(_getTextFeildValue));
      unit = time.hours;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliseconds' && _selectedUnit2nd == 'Days') {
      time.convert(TIME.milliseconds, double.parse(_getTextFeildValue));
      unit = time.days;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliseconds' &&
        _selectedUnit2nd == 'Weeks') {
      time.convert(TIME.milliseconds, double.parse(_getTextFeildValue));
      unit = time.weeks;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Milliseconds' &&
        _selectedUnit2nd == 'Years_365') {
      time.convert(TIME.milliseconds, double.parse(_getTextFeildValue));
      unit = time.years_365;
      _showResult = unit.stringValue;
    }
    //-------------------------------------------------------------------------------------------
    else if (_selectedUnit1st == 'Microseconds' &&
        _selectedUnit2nd == 'Seconds') {
      time.convert(TIME.microseconds, double.parse(_getTextFeildValue));
      unit = time.seconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Microseconds' &&
        _selectedUnit2nd == 'Milliseconds') {
      time.convert(TIME.microseconds, double.parse(_getTextFeildValue));
      unit = time.milliseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Microseconds' &&
        _selectedUnit2nd == 'Nanoseconds') {
      time.convert(TIME.microseconds, double.parse(_getTextFeildValue));
      unit = time.nanoseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Microseconds' &&
        _selectedUnit2nd == 'Minutes') {
      time.convert(TIME.microseconds, double.parse(_getTextFeildValue));
      unit = time.minutes;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Microseconds' &&
        _selectedUnit2nd == 'Hours') {
      time.convert(TIME.microseconds, double.parse(_getTextFeildValue));
      unit = time.hours;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Microseconds' && _selectedUnit2nd == 'Days') {
      time.convert(TIME.microseconds, double.parse(_getTextFeildValue));
      unit = time.days;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Microseconds' &&
        _selectedUnit2nd == 'Weeks') {
      time.convert(TIME.microseconds, double.parse(_getTextFeildValue));
      unit = time.weeks;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Microseconds' &&
        _selectedUnit2nd == 'Years_365') {
      time.convert(TIME.microseconds, double.parse(_getTextFeildValue));
      unit = time.years_365;
      _showResult = unit.stringValue;
    }

    //-------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Nanoseconds' &&
        _selectedUnit2nd == 'Seconds') {
      time.convert(TIME.nanoseconds, double.parse(_getTextFeildValue));
      unit = time.seconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Nanoseconds' &&
        _selectedUnit2nd == 'Milliseconds') {
      time.convert(TIME.nanoseconds, double.parse(_getTextFeildValue));
      unit = time.milliseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Nanoseconds' &&
        _selectedUnit2nd == 'Microseconds') {
      time.convert(TIME.nanoseconds, double.parse(_getTextFeildValue));
      unit = time.microseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Nanoseconds' &&
        _selectedUnit2nd == 'Minutes') {
      time.convert(TIME.nanoseconds, double.parse(_getTextFeildValue));
      unit = time.minutes;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Nanoseconds' && _selectedUnit2nd == 'Hours') {
      time.convert(TIME.nanoseconds, double.parse(_getTextFeildValue));
      unit = time.hours;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Nanoseconds' && _selectedUnit2nd == 'Days') {
      time.convert(TIME.nanoseconds, double.parse(_getTextFeildValue));
      unit = time.days;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Nanoseconds' && _selectedUnit2nd == 'Weeks') {
      time.convert(TIME.nanoseconds, double.parse(_getTextFeildValue));
      unit = time.weeks;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Nanoseconds' &&
        _selectedUnit2nd == 'Years_365') {
      time.convert(TIME.nanoseconds, double.parse(_getTextFeildValue));
      unit = time.years_365;
      _showResult = unit.stringValue;
    }

    //-------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Minutes' && _selectedUnit2nd == 'Seconds') {
      time.convert(TIME.minutes, double.parse(_getTextFeildValue));
      unit = time.seconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Minutes' &&
        _selectedUnit2nd == 'Milliseconds') {
      time.convert(TIME.minutes, double.parse(_getTextFeildValue));
      unit = time.milliseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Minutes' &&
        _selectedUnit2nd == 'Microseconds') {
      time.convert(TIME.minutes, double.parse(_getTextFeildValue));
      unit = time.microseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Minutes' &&
        _selectedUnit2nd == 'Nanoseconds') {
      time.convert(TIME.minutes, double.parse(_getTextFeildValue));
      unit = time.nanoseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Minutes' && _selectedUnit2nd == 'Hours') {
      time.convert(TIME.minutes, double.parse(_getTextFeildValue));
      unit = time.hours;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Minutes' && _selectedUnit2nd == 'Days') {
      time.convert(TIME.minutes, double.parse(_getTextFeildValue));
      unit = time.days;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Minutes' && _selectedUnit2nd == 'Weeks') {
      time.convert(TIME.minutes, double.parse(_getTextFeildValue));
      unit = time.weeks;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Minutes' && _selectedUnit2nd == 'Years_365') {
      time.convert(TIME.minutes, double.parse(_getTextFeildValue));
      unit = time.years_365;
      _showResult = unit.stringValue;
    }

    //-------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Hours' && _selectedUnit2nd == 'Seconds') {
      time.convert(TIME.hours, double.parse(_getTextFeildValue));
      unit = time.seconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hours' &&
        _selectedUnit2nd == 'Milliseconds') {
      time.convert(TIME.hours, double.parse(_getTextFeildValue));
      unit = time.milliseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hours' &&
        _selectedUnit2nd == 'Microseconds') {
      time.convert(TIME.hours, double.parse(_getTextFeildValue));
      unit = time.microseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hours' && _selectedUnit2nd == 'Nanoseconds') {
      time.convert(TIME.hours, double.parse(_getTextFeildValue));
      unit = time.nanoseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hours' && _selectedUnit2nd == 'Minutes') {
      time.convert(TIME.hours, double.parse(_getTextFeildValue));
      unit = time.minutes;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hours' && _selectedUnit2nd == 'Days') {
      time.convert(TIME.hours, double.parse(_getTextFeildValue));
      unit = time.days;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hours' && _selectedUnit2nd == 'Weeks') {
      time.convert(TIME.hours, double.parse(_getTextFeildValue));
      unit = time.weeks;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Hours' && _selectedUnit2nd == 'Years_365') {
      time.convert(TIME.hours, double.parse(_getTextFeildValue));
      unit = time.years_365;
      _showResult = unit.stringValue;
    }

    //-------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Days' && _selectedUnit2nd == 'Seconds') {
      time.convert(TIME.days, double.parse(_getTextFeildValue));
      unit = time.seconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Days' && _selectedUnit2nd == 'Milliseconds') {
      time.convert(TIME.days, double.parse(_getTextFeildValue));
      unit = time.milliseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Days' && _selectedUnit2nd == 'Microseconds') {
      time.convert(TIME.days, double.parse(_getTextFeildValue));
      unit = time.microseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Days' && _selectedUnit2nd == 'Nanoseconds') {
      time.convert(TIME.days, double.parse(_getTextFeildValue));
      unit = time.nanoseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Days' && _selectedUnit2nd == 'Minutes') {
      time.convert(TIME.days, double.parse(_getTextFeildValue));
      unit = time.minutes;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Days' && _selectedUnit2nd == 'Hours') {
      time.convert(TIME.days, double.parse(_getTextFeildValue));
      unit = time.hours;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Days' && _selectedUnit2nd == 'Weeks') {
      time.convert(TIME.days, double.parse(_getTextFeildValue));
      unit = time.weeks;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Days' && _selectedUnit2nd == 'Years_365') {
      time.convert(TIME.days, double.parse(_getTextFeildValue));
      unit = time.years_365;
      _showResult = unit.stringValue;
    }

//-------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Weeks' && _selectedUnit2nd == 'Seconds') {
      time.convert(TIME.weeks, double.parse(_getTextFeildValue));
      unit = time.seconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Weeks' &&
        _selectedUnit2nd == 'Milliseconds') {
      time.convert(TIME.weeks, double.parse(_getTextFeildValue));
      unit = time.milliseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Weeks' &&
        _selectedUnit2nd == 'Microseconds') {
      time.convert(TIME.weeks, double.parse(_getTextFeildValue));
      unit = time.microseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Weeks' && _selectedUnit2nd == 'Nanoseconds') {
      time.convert(TIME.weeks, double.parse(_getTextFeildValue));
      unit = time.nanoseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Weeks' && _selectedUnit2nd == 'Minutes') {
      time.convert(TIME.weeks, double.parse(_getTextFeildValue));
      unit = time.minutes;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Weeks' && _selectedUnit2nd == 'Hours') {
      time.convert(TIME.weeks, double.parse(_getTextFeildValue));
      unit = time.hours;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Weeks' && _selectedUnit2nd == 'Days') {
      time.convert(TIME.weeks, double.parse(_getTextFeildValue));
      unit = time.days;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Weeks' && _selectedUnit2nd == 'Years_365') {
      time.convert(TIME.weeks, double.parse(_getTextFeildValue));
      unit = time.years_365;
      _showResult = unit.stringValue;
    }

    //-------------------------------------------------------------------------------------------

    else if (_selectedUnit1st == 'Years_365' && _selectedUnit2nd == 'Seconds') {
      time.convert(TIME.years_365, double.parse(_getTextFeildValue));
      unit = time.seconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Years_365' &&
        _selectedUnit2nd == 'Milliseconds') {
      time.convert(TIME.years_365, double.parse(_getTextFeildValue));
      unit = time.milliseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Years_365' &&
        _selectedUnit2nd == 'Microseconds') {
      time.convert(TIME.years_365, double.parse(_getTextFeildValue));
      unit = time.microseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Years_365' &&
        _selectedUnit2nd == 'Nanoseconds') {
      time.convert(TIME.years_365, double.parse(_getTextFeildValue));
      unit = time.nanoseconds;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Years_365' && _selectedUnit2nd == 'Minutes') {
      time.convert(TIME.years_365, double.parse(_getTextFeildValue));
      unit = time.minutes;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Years_365' && _selectedUnit2nd == 'Hours') {
      time.convert(TIME.years_365, double.parse(_getTextFeildValue));
      unit = time.hours;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Years_365' && _selectedUnit2nd == 'Days') {
      time.convert(TIME.years_365, double.parse(_getTextFeildValue));
      unit = time.days;
      _showResult = unit.stringValue;
    }
    //
    else if (_selectedUnit1st == 'Years_365' && _selectedUnit2nd == 'Weeks') {
      time.convert(TIME.years_365, double.parse(_getTextFeildValue));
      unit = time.weeks;
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
                    Colors.cyanAccent.shade100,
                    Colors.cyan,
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
                        'Time',
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
                              dropdownColor: Colors.cyanAccent.withOpacity(0.8),
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
                                fontSize: 32, color: Colors.cyanAccent),
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
                              color: Colors.cyanAccent,
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
                                    Colors.cyanAccent)),
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
