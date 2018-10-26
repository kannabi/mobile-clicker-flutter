
import 'package:flutter/material.dart';
import 'package:mobile_clicker/clicker/ClickerPresenterProvider.dart';
import 'package:mobile_clicker/clicker/view/ClickerWidgetState.dart';

class ClickerWidget extends StatefulWidget {
  final ClickerPresenterProvider provider;

  ClickerWidget(this.provider);

  @override
  State<StatefulWidget> createState() =>
      ClickerWidgetState(provider.providePresenter());
}