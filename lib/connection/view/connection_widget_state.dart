import 'package:flutter/material.dart';
import 'package:mobile_clicker/connection/presenter/connection_presenter.dart';
import 'package:mobile_clicker/connection/view/connection_view.dart';
import 'package:mobile_clicker/connection/view/connection_widget.dart';

class ConnectionWidgetState
    extends State<ConnectionWidget>
    implements ConnectionView {

  ConnectionPresenter _presenter;

  ConnectionWidgetState(this._presenter);

  @override
  void initState() {
    super.initState();
    _presenter.attachView(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _presenter.onViewReady();
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
        child: Center(
          child: Text("Here we are!"),
        )
    ),
  );

}