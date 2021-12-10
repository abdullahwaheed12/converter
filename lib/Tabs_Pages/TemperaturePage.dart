import 'package:flutter/material.dart';

class TemperaturePage extends StatefulWidget {
  static final String pageName = '/TemperaturePage';

  @override
  _TemperaturePageState createState() => _TemperaturePageState();
}

class _TemperaturePageState extends State<TemperaturePage> {
  List<String> _selectionUnits = [
    'Celsius',
    'Kelvin',
    'Fahrenheit',
  ]; // Option 2
  String _selectedUnit1st = 'Celsius';
  String _selectedUnit2nd = 'Fahrenheit';
  String _getTextFeildValue;
  String _showResult;
  String _showFinalReslut = 'Result';

  double width;
  double height;

  void calculate() {
    if (_selectedUnit1st == 'Celsius' && _selectedUnit2nd == 'Kelvin') {
      _showResult = (num.parse(_getTextFeildValue) + 273.15).toString(); //
    } else if (_selectedUnit1st == 'Celsius' &&
        _selectedUnit2nd == 'Fahrenheit') {
      _showResult = ((num.parse(_getTextFeildValue) * 1.8) + 32).toString(); //
    } else if (_selectedUnit1st == 'Kelvin' && _selectedUnit2nd == 'Celsius') {
      _showResult = (num.parse(_getTextFeildValue) - 273.15).toString(); //
    } else if (_selectedUnit1st == 'Kelvin' &&
        _selectedUnit2nd == 'Fahrenheit') {
      _showResult =
          (((num.parse(_getTextFeildValue) - 273) * 1.8) + 32).toString(); //
    } else if (_selectedUnit1st == 'Fahrenheit' &&
        _selectedUnit2nd == 'Celsius') {
      _showResult =
          ((num.parse(_getTextFeildValue) - 32) * (5 / 9)).toString(); //
    } else if (_selectedUnit1st == 'Fahrenheit' &&
        _selectedUnit2nd == 'Kelvin') {
      _showResult =
          ((num.parse(_getTextFeildValue) + 459.67) * (5 / 9)).toString();
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
                gradient: LinearGradient(
                  colors: [
                    Colors.deepOrangeAccent.shade100,
                    Colors.deepOrange,
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
                        'Temperature',
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
                                  Colors.deepOrangeAccent.withOpacity(0.8),
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
                                fontSize: 32, color: Colors.deepOrangeAccent),
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
                              color: Colors.deepOrangeAccent,
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
                                    Colors.deepOrangeAccent)),
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
