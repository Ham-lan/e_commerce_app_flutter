import 'package:bloc/bloc.dart';
import 'package:project/Domain/UseCase/signup_usecase.dart';
import 'package:project/UI/Login/login_screen_initial_params.dart';
import 'login_screen_state.dart';



class LoginScreenCubit extends Cubit<LoginScreenState> {
 final LoginScreenInitialParams initialParams;
 final SignUpUseCase useCase;
 LoginScreenCubit(this.initialParams, this.useCase) : super(LoginScreenState.initial(initialParams: initialParams));

  void onInit(LoginScreenInitialParams initialParams) => emit(state.copyWith( ));

  void onPressedSignUp(String email , String password) async{
   await useCase.execute(email, password).then((value)
   => value.fold(
           (l) => emit(state.copyWith(toastMessage: l.error)) ,
           (r) => emit(state.copyWith(toastMessage: 'User Created')) ) );
  }

}
