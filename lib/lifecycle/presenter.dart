import 'package:mobile_clicker/lifecycle/Model.dart';

abstract class Presenter<View> {
  Model _model;
  View _view;

  Presenter(this._model);

  attachView(View view) {
    _view = view;
  }

  onViewReady();

  detachView() {
    _view = null;
  }
}