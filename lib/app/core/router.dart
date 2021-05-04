import 'package:flutter/material.dart';
import 'package:siga_mobile/app/ui/unauth/index/index_widget.dart';
class SigaRouter{
  Map<String,WidgetBuilder> _routes =
    Map<String,WidgetBuilder>.from(
      {

        "/index": (_)=> IndexWidget(),
      }
    );

  Map<String,WidgetBuilder> get getRoutes => _routes;
  String get initialRoute => "/index";
}

