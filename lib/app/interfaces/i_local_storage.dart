abstract class ILocalStorage{
  Future<bool> init(List<String> registryNames);
  
  Future<T> get<T>();
  Future<bool> put();
  Future<bool> delete();
  Future<bool> update();
}