import 'package:flutter/material.dart';

class LengthPage extends StatefulWidget {
  static final String pageName = '/LengthPage';

  @override
  _LengthPageState createState() => _LengthPageState();
}

class _LengthPageState extends State<LengthPage> {
  List<String> _selectionUnits = [
    'Meter',
    'Centi Meter',
    'Feet',
    'Inches',
  ]; // Option 2
  String _selectedUnit1st = 'Meter';
  String _selectedUnit2nd = 'Centi Meter';
  String _getTextFeildValue;
  String _showResult;
  String _showFinalReslut = 'Result';

  double width;
  double height;

  void calculate() {
    if (_selectedUnit1st == 'Meter' && _selectedUnit2nd == 'Centi Meter') {
      _showResult = (num.parse(_getTextFeildValue) * 100).toString();
    } else if (_selectedUnit1st == 'Meter' && _selectedUnit2nd == 'Feet') {
      _showResult = (num.parse(_getTextFeildValue) * 3.28084).toString();
    } else if (_selectedUnit1st == 'Meter' && _selectedUnit2nd == 'Inches') {
      _showResult = (num.parse(_getTextFeildValue) * 39.3701).toString();
    } else if (_selectedUnit1st == 'Centi Meter' &&
        _selectedUnit2nd == 'Meter') {
      _showResult = (num.parse(_getTextFeildValue) / 100).toString();
    } else if (_selectedUnit1st == 'Centi Meter' &&
        _selectedUnit2nd == 'Feet') {
      _showResult = (num.parse(_getTextFeildValue) / 30.48).toString();
    } else if (_selectedUnit1st == 'Centi Meter' &&
        _selectedUnit2nd == 'Inches') {
      _showResult = (num.parse(_getTextFeildValue) / 2.54).toString();
    } else if (_selectedUnit1st == 'Feet' && _selectedUnit2nd == 'Meter') {
      _showResult = (num.parse(_getTextFeildValue) / 3.281).toString();
    } else if (_selectedUnit1st == 'Feet' &&
        _selectedUnit2nd == 'Centi Meter') {
      _showResult = (num.parse(_getTextFeildValue) * 30.48).toString();
    } else if (_selectedUnit1st == 'Feet' && _selectedUnit2nd == 'Inches') {
      _showResult = (num.parse(_getTextFeildValue) * 12).toString();
    } else if (_selectedUnit1st == 'Inches' && _selectedUnit2nd == 'Meter') {
      _showResult = (num.parse(_getTextFeildValue) / 39.37).toString();
    } else if (_selectedUnit1st == 'Inches' &&
        _selectedUnit2nd == 'Centi Meter') {
      _showResult = (num.parse(_getTextFeildValue) * 2.54).toString();
    } else if (_selectedUnit1st == 'Inches' && _selectedUnit2nd == 'Feet') {
      _showResult = (num.parse(_getTextFeildValue) * 12).toString();
    } else {
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
                color: Colors.redAccent.shade200,

                // gradient: LinearGradient(
                //   colors: [
                //     Colors.redAccent.shade100,
                //     Colors.red,
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
                        'Length',
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
                              dropdownColor: Colors.redAccent.withOpacity(0.8),
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
                                fontSize: 32, color: Colors.redAccent),
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
                              color: Colors.redAccent,
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
                                    Colors.redAccent)),
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
