import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rbftestingproject/global/constrant/images.dart';
import 'package:rbftestingproject/screen/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 @override  
  void initState() {  
    super.initState();  
    Timer(Duration(seconds: 5),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  
                (context) =>LoginScreen()  
            )  
         )  
    );  
  }  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(Images.rbfgroupbdIcon)),
    );
  }
}
