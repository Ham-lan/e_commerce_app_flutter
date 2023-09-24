import 'package:dartz/dartz.dart';
import 'package:project/Domain/Failures/signUpUserFailure.dart';
import 'package:project/Domain/Repositories/userRepsitory.dart';
import 'package:project/Services/Firebase/firebase_services.dart';

class FirebaseUserRepository implements UserRepository{
  final FirebaseServices firebaseServices;
  FirebaseUserRepository(this.firebaseServices);

  @override
  Future<Either<SignUpUserFailure, bool>> signUp(String email, String password) {
    // TODO: implement signUp
    return firebaseServices.createUser(email, password);
  }



}