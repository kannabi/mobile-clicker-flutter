import 'package:mobile_clicker/clicker/model/controller/desktop_controller.dart';
import 'package:mobile_clicker/clicker/store/primitive_store.dart';

class LanDesktopController implements DesktopController {
  String _desktopIp;
  int _desktopPort;
  String _sessionId;
  PrimitiveStore _primitiveStore;

  int _maxPage;
  set maxPage(int value) => _maxPage = value;

  int _currentPage = 0;
  set currentPage(int value) => _currentPage = value;

  LanDesktopController(
      this._primitiveStore,
      [this._desktopIp, this._desktopPort, this._sessionId, this._maxPage]
  );

  @override
  void disconnect() {
    // TODO: implement disconnect
  }

  @override
  int getCurrentPage() {
    // TODO: implement getCurrentPage
  }

  @override
  getMetaUpdateObservable() {
    // TODO: implement getMetaUpdateObservable
  }

  @override
  int getPageNumbers() {
    // TODO: implement getPageNumbers
  }

  @override
  getPageSwitchingObservable() {
    // TODO: implement getPageSwitchingObservable
  }

  @override
  void init() {
    // TODO: implement init
  }

  @override
  bool isConnected() {
    // TODO: implement isConnected
  }

  @override
  void switchPage(int page) {
    // TODO: implement switchPage
  }
}