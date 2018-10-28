import 'package:mobile_clicker/clicker/model/controller/desktop_controller.dart';
import 'package:mobile_clicker/clicker/model/controller/desktop_controller_factory.dart';
import 'package:mobile_clicker/clicker/model/controller/desktop_controller_factory_generator.dart';
import 'package:mobile_clicker/clicker/model/exceptions/no_tag_found.dart';
import 'package:mobile_clicker/store/primitive_store.dart';
import 'package:mobile_clicker/store/primitive_store_keys.dart';

class ClickerModel {
  final PrimitiveStore _store;
  DesktopControllerFactory _controllerFactory;
  DesktopController _controller;

  ClickerModel(this._store, [this._controllerFactory]);

  Future<void> init() async {
    _controller =
      _controllerFactory == null ?
        await _restoreFromTag() :
        _controllerFactory.create(_store);

    await _controller.init();
  }

  Future<DesktopController> _restoreFromTag() async {
    final controllerTag = await _store.find(CONTROLLER_TAG_KEY);
    if (controllerTag == null) {
      throw NoTagFoundException();
    }
    return DesktopControllerFactoryGenerator()
        .generate(controllerTag).create(_store);
  }
}