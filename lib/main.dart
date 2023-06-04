import 'package:delta_app/bindings/initializing_dependenciese.dart';
import 'package:delta_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constant/routs_strings/routs_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: InitializingDependencise(),
      initialRoute: homescreen,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
