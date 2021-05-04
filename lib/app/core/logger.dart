import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/core/constants.dart';

class Logger{
  
  bool _enabled = GetIt.I<Constants>().isDevMode;

  String _getDateTime(){

    DateTime nowDate = DateTime.now();
    return "${nowDate.year}/${nowDate.month}/${nowDate.day} ${nowDate.hour}:${nowDate.second}";
  }
  void error(String message){
    if(_enabled)  print("[ERROR] $_getDateTime => $message");
  }
  void message(){
    if(_enabled)print("[MESSAGE] $_getDateTime => $message");
  }
}