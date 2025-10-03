import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mongoverse/view/about_us_page.dart';
import 'package:mongoverse/view/dashboard_screen.dart';
import 'package:mongoverse/view/modules/basic_module_screens/bson_format.dart';
import 'package:mongoverse/view/modules/basic_module_screens/documents_and_collection.dart';
import 'package:mongoverse/view/modules/basic_module_screens/features_of_mongodb.dart';
import 'package:mongoverse/view/modules/basic_module_screens/mogodb_crud.dart';
import 'package:mongoverse/view/modules/basic_module_screens/mongdb_installation.dart';
import 'package:mongoverse/view/modules/basic_module_screens/mongodb_compass.dart';
import 'package:mongoverse/view/modules/basic_module_screens/mongodb_data_types.dart';
import 'package:mongoverse/view/modules/basic_module_screens/mongodb_shell.dart';
import 'package:mongoverse/view/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen()
    );
  }
}
