import 'package:mobile_clicker/clicker/model/controller/desktop_controller_factory.dart';
import 'package:mobile_clicker/clicker/model/controller/lan/lan_desktop_controller_factory.dart';

class DesktopControllerFactoryGenerator {

  static const String LAN_TAG = "LAN_TAG";

  DesktopControllerFactory generate(String tag) {
    var factory;
    switch(tag) {
      case LAN_TAG: {
        factory = LanDesktopControllerFactory();
        break;
      }
      default: {
        factory = null;
      }
    }
    return factory;
  }
}