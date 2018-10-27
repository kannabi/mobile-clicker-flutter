import 'package:mobile_clicker/clicker/model/controller/desktop_controller.dart';
import 'package:mobile_clicker/clicker/store/primitive_store.dart';

abstract class DesktopControllerFactory {
  DesktopController create(PrimitiveStore primitiveStore);
}