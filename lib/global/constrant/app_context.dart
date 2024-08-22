
import 'package:flutter/material.dart';

class AppContext{
  BuildContext context;
  AppContext(this.context);
  double get height=>MediaQuery.of(context).size.height;
  double get width=>MediaQuery.of(context).size.width;

}