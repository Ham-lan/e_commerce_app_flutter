import 'package:dartz/dartz.dart';
import 'package:project/Domain/Failures/signUpUserFailure.dart';

abstract class UserRepository{
 Future<Either<SignUpUserFailure , bool>> signUp(String email , String password);
}