import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:siga_mobile/app/core/logger.dart';
import 'package:siga_mobile/app/interfaces/i_local_storage.dart';

class LocalStorage extends Logger implements ILocalStorage {
  @override
  Future<bool> delete() async {
    return true;
  }

  @override
  T get<T>(String boxName, String key) {
    Box _box = Hive.box(boxName);
    return _box.get(key, defaultValue: null);
  }

  Future<Box?> _getBoxExistence(String boxName) async {
    message("asserting box $boxName existence");
    if (await Hive.boxExists(boxName)) {
      message('Box $boxName do exist');
      return Hive.box(boxName);
    } else {
      error("box dont exist");
      return null;
    }
  }

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox("config");
    await Hive.openBox("cache");
    message("all boxes oppenend");
  }

  @override
  Future<void> put<T>(String boxName, String key, T value) async {
    Box _box = (await _getBoxExistence(boxName))!;
    _box.put(key, value);
  }

  @override
  Future<bool> update() async {
    return true;
  }

  Future<String> getStoredID() async {
    return await get("cache", "user");
  }

  Future<void> clearSessionData() async {
    Box _box = Hive.box("cache");
    await _box.delete("user");
    await _box.delete("token");
  }
}
