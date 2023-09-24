import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/Domain/Failures/signUpUserFailure.dart';

class FirebaseServices{
  Future<Either<SignUpUserFailure , bool>>  createUser(String email , String password) async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

    if(firebaseAuth.currentUser == null){
      return left(SignUpUserFailure(error: 'User not created'));
    }
    else{
      return right(true);
    }

  }
}