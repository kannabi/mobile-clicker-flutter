import 'package:mobile_clicker/clicker/model/clicker_model.dart';
import 'package:mobile_clicker/clicker/view/clicker_view.dart';
import 'package:mobile_clicker/lifecycle/presenter.dart';

class ClickerPresenter extends Presenter {

  final ClickerModel _model;
  ClickerView _view;

  ClickerPresenter(this._model);

  @override
  attachView(view) {
    _view = view;
  }

  @override
  detachView() {
    _view = null;
  }
}