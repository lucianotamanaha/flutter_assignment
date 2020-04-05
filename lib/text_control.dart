import 'package:flutter/material.dart';
import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String _mainText = 'This is the first assignment!';

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          RaisedButton(
            child: Text('Change Text'),
            onPressed: () {
              setState(() {
                _mainText = 'Text is Changed!';
              });
            },
          ),
          TextOutput(_mainText),
        ],
      );
  }
}
