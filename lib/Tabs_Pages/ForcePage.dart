import 'package:flutter/material.dart';
import 'package:units_converter/units_converter.dart';

class ForcePage extends StatefulWidget {
  static final String pageName = '/ForcePage';

  @override
  _ForcePageState createState() => _ForcePageState();
}

class _ForcePageState extends State<ForcePage> {
  List<String> _selectionUnits = [
    'Newton',
    'Dyne',
    'Pound_force',
    'Kilogram_force',
    'Poundal',
  ]; // Option 2
  String _selectedUnit1st = 'Newton';
  String _selectedUnit2nd = 'Dyne';
  String _getTextFeildValue;
  String _showResult;
  String _showFinalReslut = 'Result';
  Force force;
  Unit unit;

  double width;
  double height;
  @override
  void initState() {
    super.initState();
    force = Force(removeTrailingZeros: false);
  }

  void calculate() {
    // selection to Newton
    //1
    if (_selectedUnit1st == 'Newton' && _selectedUnit2nd == 'Dyne') {
      force.convert(FORCE.newton, double.parse(_getTextFeildValue));
      unit = force.dyne;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Newton' &&
        _selectedUnit2nd == 'Pound_force') {
      force.convert(FORCE.newton, double.parse(_getTextFeildValue));
      unit = force.pound_force;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Newton' &&
        _selectedUnit2nd == 'Kilogram_force') {
      force.convert(FORCE.newton, double.parse(_getTextFeildValue));
      unit = force.kilogram_force;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Newton' && _selectedUnit2nd == 'Poundal') {
      force.convert(FORCE.newton, double.parse(_getTextFeildValue));
      unit = force.poundal;
      _showResult = unit.stringValue;
    }
    //end

    //------------------------------------------------------------------------------------------
    // selection to Pound_force
    //1
    else if (_selectedUnit1st == 'Pound_force' && _selectedUnit2nd == 'Dyne') {
      force.convert(FORCE.pound_force, double.parse(_getTextFeildValue));
      unit = force.dyne;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Pound_force' &&
        _selectedUnit2nd == 'Newton') {
      force.convert(FORCE.pound_force, double.parse(_getTextFeildValue));
      unit = force.newton;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Pound_force' &&
        _selectedUnit2nd == 'Kilogram_force') {
      force.convert(FORCE.pound_force, double.parse(_getTextFeildValue));
      unit = force.kilogram_force;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Pound_force' &&
        _selectedUnit2nd == 'Poundal') {
      force.convert(FORCE.pound_force, double.parse(_getTextFeildValue));
      unit = force.poundal;
      _showResult = unit.stringValue;
    }
    //end

    //------------------------------------------------------------------------------------------
    // selection to Kilogram_force
    //1
    else if (_selectedUnit1st == 'Kilogram_force' &&
        _selectedUnit2nd == 'Dyne') {
      force.convert(FORCE.kilogram_force, double.parse(_getTextFeildValue));
      unit = force.dyne;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Kilogram_force' &&
        _selectedUnit2nd == 'Newton') {
      force.convert(FORCE.kilogram_force, double.parse(_getTextFeildValue));
      unit = force.newton;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Kilogram_force' &&
        _selectedUnit2nd == 'Pound_force') {
      force.convert(FORCE.kilogram_force, double.parse(_getTextFeildValue));
      unit = force.pound_force;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Kilogram_force' &&
        _selectedUnit2nd == 'Poundal') {
      force.convert(FORCE.kilogram_force, double.parse(_getTextFeildValue));
      unit = force.poundal;
      _showResult = unit.stringValue;
    }
    //end

    //------------------------------------------------------------------------------------------
    // selection to Poundal
    //1
    else if (_selectedUnit1st == 'Poundal' && _selectedUnit2nd == 'Dyne') {
      force.convert(FORCE.poundal, double.parse(_getTextFeildValue));
      unit = force.dyne;
      _showResult = unit.stringValue;
    }
    //2
    else if (_selectedUnit1st == 'Poundal' && _selectedUnit2nd == 'Newton') {
      force.convert(FORCE.poundal, double.parse(_getTextFeildValue));
      unit = force.newton;
      _showResult = unit.stringValue;
    }
    //3
    else if (_selectedUnit1st == 'Poundal' &&
        _selectedUnit2nd == 'Pound_force') {
      force.convert(FORCE.poundal, double.parse(_getTextFeildValue));
      unit = force.pound_force;
      _showResult = unit.stringValue;
    }
    //4
    else if (_selectedUnit1st == 'Poundal' &&
        _selectedUnit2nd == 'Kilogram_force') {
      force.convert(FORCE.poundal, double.parse(_getTextFeildValue));
      unit = force.kilogram_force;
      _showResult = unit.stringValue;
    }
    //end
    //-----------------------------------------------

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
                color: Colors.amber,
                // gradient: LinearGradient(
                //   colors: [
                //     Colors.amberAccent.shade100,
                //     Colors.amber,
                //   ],
                //   begin: Alignment.bottomLeft,
                //   end: Alignment.topRight,
                // ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Force',
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
                                labelText: 'Enter Value',
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
                                  Colors.amberAccent.withOpacity(0.8),
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
                                fontSize: 32, color: Colors.amberAccent),
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
                              color: Colors.amberAccent,
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
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.amber)),
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
