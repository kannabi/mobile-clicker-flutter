
import 'package:flutter/material.dart';
import 'package:mobile_clicker/clicker/clicker_presenter_provider.dart';
import 'package:mobile_clicker/clicker/view/clicker_widget_state.dart';

class ClickerWidget extends StatefulWidget {
  final ClickerPresenterProvider provider;

  ClickerWidget(this.provider);

  @override
  State<StatefulWidget> createState() =>
      ClickerWidgetState(provider.providePresenter());
}