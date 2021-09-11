abstract class ILocalStorage {
  Future<void> init();

  T get<T>(String boxName, String key);
  Future<void> put<T>(String boxName, String key, T value);
  Future<bool> delete();
  Future<bool> update();
}
