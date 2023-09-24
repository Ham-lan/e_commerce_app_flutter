
import 'package:project/UI/Login/login_screen_initial_params.dart';

class LoginScreenState {
  final String toastMessage;
  const LoginScreenState({required this.toastMessage});

  factory LoginScreenState.initial({required LoginScreenInitialParams initialParams}) =>
      const LoginScreenState(
        toastMessage: ''
  );

  LoginScreenState copyWith({
    String? toastMessage,
}) =>
      LoginScreenState(
        toastMessage: toastMessage ?? this.toastMessage
      );
}