import 'package:mobile_clicker/clicker/model/clicker_model.dart';
import 'package:mobile_clicker/clicker/presenter/clicker_presenter.dart';
import 'package:mobile_clicker/store/preferences_primitive_store.dart';

class ClickerPresenterProvider {
  ClickerPresenter providePresenter() =>
      ClickerPresenter(ClickerModel(const PreferencesPrimitiveStore()));
}