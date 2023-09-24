import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context , child)
      =>  Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Log in')),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100.h ,),
              Text('Well come to our App',
                style: TextStyle(
                    color: Colors.blue ,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 50.h ,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your email address',
                  hintStyle: TextStyle(color: Colors.grey),
                ),


              ),
              SizedBox(height: 20.h ,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.grey),
                ),


              ),
              SizedBox(height: 100.h,),
              TextButton(
                onPressed: () {
                  // Define the action you want to perform when the button is clicked
                  print('');
                },
                child: Text('Login' , style: TextStyle(color: Colors.blue),), // Button text
              )

            ],
          ),
        ),
      ),
          designSize: const Size(393, 852),
    );
  }
}
