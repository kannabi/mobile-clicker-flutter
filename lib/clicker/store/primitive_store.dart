abstract class PrimitiveStore {

  Future<void> store(String key, String value);

  Future<void> storeAll(Map<String, String> map);

  Future<String> find(String key);

  Future<void> remove(String key);
}