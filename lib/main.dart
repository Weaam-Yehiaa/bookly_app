import 'package:bookly_app/screens/splash_screen/SplashScreen.dart';
import 'package:bookly_app/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().
              copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: const SplashScreen(),
    );
  }
}
