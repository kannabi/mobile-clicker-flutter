abstract class DesktopController {

  Future<void> init();

  int getPageNumbers();

  int getCurrentPage();

  void switchPage(int page);

  dynamic getPageSwitchingObservable();

  dynamic getMetaUpdateObservable();

  bool isConnected();

  void disconnect();
}