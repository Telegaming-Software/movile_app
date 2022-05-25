import 'package:flutter/material.dart';
import 'package:tg_software_app/router/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TGSoftware',
      initialRoute: AppRoutes.initialRouter,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: AppRoutes.routes,
    );
  }
}
