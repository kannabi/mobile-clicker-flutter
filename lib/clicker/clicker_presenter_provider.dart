import 'package:mobile_clicker/clicker/model/clicker_model.dart';
import 'package:mobile_clicker/clicker/presenter/clicker_presenter.dart';

class ClickerPresenterProvider {
  ClickerPresenter providePresenter() =>
      ClickerPresenter(ClickerModel());
}