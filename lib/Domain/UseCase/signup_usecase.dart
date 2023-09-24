import 'package:dartz/dartz.dart';
import 'package:project/Domain/Failures/signUpUserFailure.dart';
import 'package:project/Domain/Repositories/userRepsitory.dart';

class SignUpUseCase{
  final UserRepository userRepository;
  SignUpUseCase(this.userRepository);
  Future<Either<SignUpUserFailure , bool>> execute(String email , String password){
    return userRepository.signUp(email, password);
  }
}