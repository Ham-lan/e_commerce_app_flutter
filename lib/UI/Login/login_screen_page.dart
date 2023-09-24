import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/ReUseAble_Widgets/toast_message.dart';
import 'package:project/UI/Login/login_screen_cubit.dart';
import 'package:project/UI/Login/login_screen_state.dart';

class LoginScreenPage extends StatefulWidget {
  final LoginScreenCubit cubit;
  const LoginScreenPage({Key? key, required this.cubit}) : super(key: key);


  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {

  LoginScreenCubit get cubit => widget.cubit;

  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // TODO : Fix it Later
  }


  @override
  Widget build(BuildContext context) {
    return
      ScreenUtilInit(
        builder: (BuildContext context , child) =>
            Scaffold(
              appBar: AppBar(
                title: Text('Flutter Email and Password Form'),
              ),
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter an email address';
                          } else if (!isValidEmail(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.h),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true, // Hide the password
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a password';
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.h),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Form is valid, process the data
                            final email = _emailController.text;
                            final password = _passwordController.text;
                            // You can handle the email and password here
                            // For example, you can send them to a server for authentication
                            print('Email: $email');
                            print('Password: $password');

                            cubit.onPressedSignUp(email, password);

                          }
                        },
                        child: Text('Submit'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            designSize: const Size(393, 852),
      );
  }


  bool isValidEmail(String email) {
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@gmai[\w-]+(\.[\w-]+)*.com+$');
    return emailRegExp.hasMatch(email);
  }

}
