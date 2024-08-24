import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rbftestingproject/global/constrant/color_resourse.dart';

import 'screen/auth/login_screen.dart';

void main() {
  // Set the status bar color
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  statusBarColor: Color(0xFF212741), // Set your desired status bar color
  ));
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: ColorRes.darkScaffoldBgColor ,
      ),

    );
  }
}



