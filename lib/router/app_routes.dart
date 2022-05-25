import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tg_software_app/pages/login.dart';

class AppRoutes {
  static const initialRouter = 'login';
  static Map<String, Widget Function(BuildContext)> routes = {
    'login': (BuildContext context) => const Login()
  };
  static onGeneratedRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const Login());
  }
}
