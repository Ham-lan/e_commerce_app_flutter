import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toastr/flutter_toastr.dart';

class ToastMessage{
  showMessage(String message , BuildContext context){
    FlutterToastr.show(
        message,
        context,
        duration: FlutterToastr.lengthShort,
        position:  FlutterToastr.bottom,
        backgroundColor: Colors.red,
      textStyle: const TextStyle(color: Colors.white)
    );
  }
}