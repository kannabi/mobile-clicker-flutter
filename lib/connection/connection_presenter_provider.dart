import 'package:mobile_clicker/connection/model/connection_model.dart';
import 'package:mobile_clicker/connection/presenter/connection_presenter.dart';
import 'package:mobile_clicker/store/preferences_primitive_store.dart';

class ConnectionPresenterProvider {

  ConnectionPresenter provide() =>
      ConnectionPresenter(ConnectionModel(const PreferencesPrimitiveStore()));
}