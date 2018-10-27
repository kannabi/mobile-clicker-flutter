import 'package:mobile_clicker/clicker/model/controller/desktop_controller.dart';
import 'package:mobile_clicker/clicker/model/controller/desktop_controller_factory.dart';
import 'package:mobile_clicker/clicker/model/controller/lan/lan_desktop_controller.dart';
import 'package:mobile_clicker/clicker/store/primitive_store.dart';

class LanDesktopControllerFactory extends DesktopControllerFactory {

  String _desktopIp;
  int _desktopPort;
  String _sessionId;
  int _maxPage;

  LanDesktopControllerFactory(
      [this._desktopIp,
      this._desktopPort,
      this._sessionId,
      this._maxPage]
  );

  @override
  DesktopController create(PrimitiveStore primitiveStore) =>
      LanDesktopController(
          primitiveStore, _desktopIp, _desktopPort, _sessionId, _maxPage
      );

}