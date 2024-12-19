import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goldapp/gold-home.dart';


void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        GoldHome()

    );
  }
}