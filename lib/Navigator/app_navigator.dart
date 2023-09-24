import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppNavigator{
  push(BuildContext context , Widget page){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page)
    );
  }
}