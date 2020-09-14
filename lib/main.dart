import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eos_playground/router/app_router.gr.dart';
import 'package:get/route_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // getPages: [
      //   GetPage(name: '/', page: () => HomePage()),
      //   GetPage(name: '/count', page: () => HomePage()),
      // ],
      // home: HomePage(),
      onGenerateRoute: AppRouter(),
      // builder: ExtendedNavigator.builder<AppRouter>(
      //   router: AppRouter(),
      //   builder: (context, extendedNav) => Theme(
      //     data: ThemeData(brightness: Brightness.dark),
      //     child: extendedNav,
      //   ),
      // ),
    );
  }
}
