

import 'package:flutter/material.dart';
import 'package:rbftestingproject/global/constrant/color_resourse.dart';

final ButtonStyle buttonStyle=ElevatedButton.styleFrom(
  backgroundColor:ColorRes.blue,
  minimumSize: Size(double.infinity,50),
  elevation: 0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  )
);
