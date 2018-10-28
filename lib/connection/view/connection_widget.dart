import 'package:flutter/material.dart';
import 'package:mobile_clicker/connection/connection_presenter_provider.dart';
import 'package:mobile_clicker/connection/view/connection_widget_state.dart';

class ConnectionWidget extends StatefulWidget {

  final ConnectionPresenterProvider _provider;

  ConnectionWidget(this._provider);

  @override
  State<StatefulWidget> createState() =>
      ConnectionWidgetState(_provider.provide());

}