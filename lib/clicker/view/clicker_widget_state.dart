import 'package:flutter/material.dart';
import 'package:mobile_clicker/clicker/presenter/clicker_presenter.dart';
import 'package:mobile_clicker/clicker/view/clicker_view.dart';
import 'package:mobile_clicker/clicker/view/clicker_widget.dart';
import 'package:mobile_clicker/clicker/view/widgets/clicker_button.dart';
import 'package:mobile_clicker/connection/connection_presenter_provider.dart';
import 'package:mobile_clicker/connection/view/connection_widget.dart';

class ClickerWidgetState extends State<ClickerWidget> implements ClickerView {

  int _currentPage = 0;
  int _maxPage = 0;
  bool isConnected = false;

  final ClickerPresenter _presenter;

  ClickerWidgetState(this._presenter);

  @override
  void initState() {
    super.initState();
    _presenter.attachView(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _presenter.onViewReady();
    });
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(
          body: SafeArea(
            child: isConnected ? _getMainBody() : _getProgressDialog()
          )
      );

  Widget _getMainBody() =>
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClickerButton("NEXT", () {}),
            ClickerButton("PREVIOUS", () {}),
            ClickerButton("$_currentPage OF $_maxPage", () {})
          ],
        ),
      );

  Widget _getProgressDialog() => Center(child: CircularProgressIndicator());

  @override
  goToConnectScreen() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => ConnectionWidget(ConnectionPresenterProvider())
    ));
  }

}
