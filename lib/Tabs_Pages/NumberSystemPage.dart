import 'package:flutter/material.dart';
import 'package:units_converter/units_converter.dart';

class NumberSystemPage extends StatefulWidget {
  static final String pageName = '/NumberSystemPage';
// changed
  @override
  _NumberSystemPageState createState() => _NumberSystemPageState();
}

class _NumberSystemPageState extends State<NumberSystemPage> {
  List<String> _selectionUnits = [
    'Decimal',
    'Hexadecimal',
    'Octal',
    'Binary',
  ]; // Option 2
  String _selectedUnit1st = 'Decimal';
  String _selectedUnit2nd = 'Hexadecimal';
  String _getTextFeildValue = '0';
  String _showResult;
  String _showFinalReslut = 'Result';
  NumeralSystems numeralSystems;
  Unit unit;

  double width;
  double height;

  @override
  void initState() {
    super.initState();
    numeralSystems = NumeralSystems();
  }

  void calculate() {
    // selection to Decimal
    //1
    if (_selectedUnit1st == 'Decimal' && _selectedUnit2nd == 'Hexadecimal') {
      numeralSystems.convert(NUMERAL_SYSTEMS.decimal, _getTextFeildValue);
      unit = numeralSystems.hexadecimal;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Decimal' && _selectedUnit2nd == 'Octal') {
      numeralSystems.convert(NUMERAL_SYSTEMS.decimal, _getTextFeildValue);
      unit = numeralSystems.octal;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Decimal' && _selectedUnit2nd == 'Binary') {
      numeralSystems.convert(NUMERAL_SYSTEMS.decimal, _getTextFeildValue);
      unit = numeralSystems.binary;
      _showResult = unit.stringValue;
    }

    //end

    //------------------------------------------------------------------------------------------
    // selection to Hexadecimal
    //1
    else if (_selectedUnit1st == 'Hexadecimal' &&
        _selectedUnit2nd == 'Decimal') {
      numeralSystems.convert(NUMERAL_SYSTEMS.hexadecimal, _getTextFeildValue);
      unit = numeralSystems.decimal;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Hexadecimal' && _selectedUnit2nd == 'Octal') {
      numeralSystems.convert(NUMERAL_SYSTEMS.hexadecimal, _getTextFeildValue);
      unit = numeralSystems.octal;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Hexadecimal' &&
        _selectedUnit2nd == 'Binary') {
      numeralSystems.convert(NUMERAL_SYSTEMS.hexadecimal, _getTextFeildValue);
      unit = numeralSystems.binary;
      _showResult = unit.stringValue;
    }

    //end
    //------------------------------------------------------------------------------------------
    // selection to Octal
    //1
    else if (_selectedUnit1st == 'Octal' && _selectedUnit2nd == 'Decimal') {
      numeralSystems.convert(NUMERAL_SYSTEMS.octal, _getTextFeildValue);
      unit = numeralSystems.decimal;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Octal' && _selectedUnit2nd == 'Hexadecimal') {
      numeralSystems.convert(NUMERAL_SYSTEMS.octal, _getTextFeildValue);
      unit = numeralSystems.hexadecimal;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Octal' && _selectedUnit2nd == 'Binary') {
      numeralSystems.convert(NUMERAL_SYSTEMS.octal, _getTextFeildValue);
      unit = numeralSystems.binary;
      _showResult = unit.stringValue;
    }

    //end
    //------------------------------------------------------------------------------------------
    // selection to Binary
    //1
    else if (_selectedUnit1st == 'Binary' && _selectedUnit2nd == 'Decimal') {
      numeralSystems.convert(NUMERAL_SYSTEMS.binary, _getTextFeildValue);
      unit = numeralSystems.decimal;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Binary' &&
        _selectedUnit2nd == 'Hexadecimal') {
      numeralSystems.convert(NUMERAL_SYSTEMS.binary, _getTextFeildValue);
      unit = numeralSystems.hexadecimal;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Binary' && _selectedUnit2nd == 'Octal') {
      numeralSystems.convert(NUMERAL_SYSTEMS.binary, _getTextFeildValue);
      unit = numeralSystems.octal;
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
                    Colors.tealAccent.shade100,
                    Colors.teal,
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
                        'Number',
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
                              dropdownColor: Colors.tealAccent.withOpacity(0.8),
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
                                fontSize: 32, color: Colors.tealAccent),
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
                              color: Colors.tealAccent,
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
                                    Colors.tealAccent)),
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
