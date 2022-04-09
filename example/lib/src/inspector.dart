import 'package:flutter/material.dart';
import 'package:stockholm/stockholm.dart';

class StockholmPropertyInspectorDemoPage extends StatelessWidget {
  const StockholmPropertyInspectorDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        MyPropertyInspector(),
      ],
    );
  }
}

class MyPropertyInspector extends StatefulWidget {
  const MyPropertyInspector({Key? key}) : super(key: key);

  @override
  _MyPropertyInspectorState createState() => _MyPropertyInspectorState();
}

class _MyPropertyInspectorState extends State<MyPropertyInspector> {
  bool _checkboxValue = true;
  int _intValue = 100;
  String _stringValue = 'Hello';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: Theme.of(context).dividerColor),
        ),
      ),
      child: StockholmPropertyInspector(
        header: StockholmPIHeader(
          child: Text('Property inspector'),
        ),
        properties: [
          StockholmPICheckboxProp(
            name: 'Checkbox',
            value: _checkboxValue,
            onChanged: (value) {
              setState(() {
                _checkboxValue = value;
              });
            },
          ),
          StockholmPIDivider(),
          StockholmPIEditableIntProp(
            name: 'Integer value',
            value: _intValue,
            onChanged: (value) {
              setState(() {
                _intValue = value;
              });
            },
          ),
          StockholmPITextProp(
            name: 'Text',
            value: 'Hello',
          ),
          StockholmPIListProp(
            name: 'List',
            fallbackText: 'My list is empty',
          ),
          StockholmPIListProp(
            name: 'List',
            fallbackText: 'My list is empty',
            list: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text('Item 1'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text('Item 2'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text('Item 3'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
