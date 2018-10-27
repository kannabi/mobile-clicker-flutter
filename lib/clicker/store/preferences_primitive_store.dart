import 'package:shared_preferences/shared_preferences.dart';
import 'package:mobile_clicker/clicker/store/primitive_store.dart';

class PreferencesPrimitiveStore extends PrimitiveStore {

  @override
  Future<String> find(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }

  @override
  Future<void> remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  @override
  Future<void> store(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  @override
  Future<void> storeAll(Map<String, String> map) async {
    final prefs = await SharedPreferences.getInstance();
    map.forEach((key, value) {
      prefs.setString(key, value);
    });
  }

}