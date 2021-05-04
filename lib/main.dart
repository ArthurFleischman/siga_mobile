import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:siga_mobile/app/app_widget.dart';
import 'package:siga_mobile/app/core/singletons.dart';
import 'package:hive_flutter/hive_flutter.dart';


void mainEntry() {
  registerSingletons();
  
  runApp(AppWidget());
}
