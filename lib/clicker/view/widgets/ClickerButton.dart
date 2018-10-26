import 'package:flutter/material.dart';

class ClickerButton extends Expanded {
  ClickerButton(String text, VoidCallback onPressed) :
      super(
          child: Container(
            padding: EdgeInsets.all(4.0),
            child: RaisedButton(
              child: Text(text),
              onPressed: onPressed,
            ),
          ),
      );
}