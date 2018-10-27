abstract class DesktopController {

  void init();

  int getPageNumbers();

  int getCurrentPage();

  void switchPage(int page);

  dynamic getPageSwitchingObservable();

  dynamic getMetaUpdateObservable();

  bool isConnected();

  void disconnect();
}