import 'package:flutter/material.dart';
import 'package:project/Navigator/app_navigator.dart';
import 'package:project/UI/Login/login_screen_initial_params.dart';
import 'package:project/UI/Login/login_screen_page.dart';
import 'package:project/main.dart';

class LoginScreenNavigator{

}
mixin LoginScreenRoute{
  openLoginScreen(LoginScreenInitialParams initialParams)
  {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => LoginScreenPage(cubit: getIt(param1: initialParams),))
    );
  }
  BuildContext get context;
  AppNavigator get navigator;
}