import 'package:mobile_clicker/connection/model/connection_model.dart';
import 'package:mobile_clicker/connection/view/connection_view.dart';
import 'package:mobile_clicker/lifecycle/presenter.dart';

class ConnectionPresenter implements Presenter<ConnectionView> {
  final ConnectionModel _model;
  ConnectionView _view;

  ConnectionPresenter(this._model);

  @override
  attachView(view) {
    _view = view;
  }

  @override
  Future<void> onViewReady() async {
  }

  @override
  detachView() {
    _view = null;
  }
}