import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:siga_mobile/app/interfaces/i_local_storage.dart';

class LocalStorage extends ILocalStorage{
  @override
  Future<bool> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<T> get<T>() {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<bool> init(List<String> registryNames) async {
    try{
      await Hive.initFlutter();
      
      registryNames.forEach((name) async => await Hive.openBox(name));
    }
    catch(e){
      print("error");
      return false;
    }
    return true;
  }

  @override
  Future<bool> put() {
    // TODO: implement put
    throw UnimplementedError();
  }

  @override
  Future<bool> update() {
    // TODO: implement update
    throw UnimplementedError();
  }
  

    
  

}