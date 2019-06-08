import 'package:flutter/material.dart';

//Text Box
class RadioGroup extends StatelessWidget {
  int radioCount;
  List<String> labels;
  List<int> values;
  Function callback;
  int valueGroup;
  String title;
  RadioGroup(
      {this.labels,
      this.values,
      this.radioCount,
      this.valueGroup,
      this.callback,
      this.title});

  List<Widget> radioWidgets = [];

  @override
  Widget build(BuildContext context) {
    radioWidgets.add(_createTitle(title));

    for (int i = 0; i < radioCount; i++) {
      _createChildren(i);
    }

    var finalRadioGroup = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: radioWidgets,
    );

    return finalRadioGroup;
  }

  Widget _createRadioButton(
      int _radioValue, Function _handleRadioValueChange, int _valueGroup) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Radio(
        value: _radioValue,
        groupValue: _valueGroup,
        onChanged: _handleRadioValueChange,
      ),
    );
  }

  Widget _createRadioLabel(String _txtRadio) {
    return Text(
      _txtRadio,
      textAlign: TextAlign.start,
    );
  }

  Widget _createTitle(String _txtRadio) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        _txtRadio,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
        ),
      ),
    );
  }

  Widget _createChildren(int index) {
    radioWidgets.add(_createRadioButton(values[index], callback, valueGroup));
    radioWidgets.add(_createRadioLabel(labels[index]));
  }
}
