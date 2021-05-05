abstract class ILocalStorage {
  Future<void> init();

  Future<T?> get<T>(String boxName, String key);
  Future<void> put<T>(String boxName, String key, T value);
  Future<bool> delete();
  Future<bool> update();
}
