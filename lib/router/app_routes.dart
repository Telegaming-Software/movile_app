import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tg_software_app/pages/login.dart';
import 'package:tg_software_app/pages/restaurar_password_page.dart';

import '../pages/register_page.dart';

class AppRoutes {
  static const initialRouter = 'login';
  static Map<String, Widget Function(BuildContext)> routes = {
    'login': (BuildContext context) => const Login(),
    'restaurarPassword': (BuildContext context) =>
        const RestaurarPasswordPage(),
    'registerPage': (BuildContext context) => const RegisterPage(),
  };
  static onGeneratedRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const Login());
  }
}
