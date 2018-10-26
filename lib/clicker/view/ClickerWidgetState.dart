import 'package:flutter/material.dart';
import 'package:mobile_clicker/clicker/presenter/ClickerPresenter.dart';
import 'package:mobile_clicker/clicker/view/ClickerView.dart';
import 'package:mobile_clicker/clicker/view/ClickerWidget.dart';
import 'package:mobile_clicker/clicker/view/widgets/ClickerButton.dart';

class ClickerWidgetState extends State<ClickerWidget> implements ClickerView {
  final ClickerPresenter presenter;

  ClickerWidgetState(this.presenter);

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ClickerButton("NEXT", () {}),
                ClickerButton("PREVIOUS", () {}),
                ClickerButton("0 OF 0", () {})
              ],
            ),
          ),
        ),
      );
}
