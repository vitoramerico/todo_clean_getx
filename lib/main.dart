import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/shared/routes/app_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      enableLog: true,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      defaultTransition: Transition.cupertino,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.teal,
      ),
    );
  }
}
