import 'package:firebase_auth/firebase_auth.dart';
import '../service/firebase_service.dart';


class FireBaseRepository {

  //firstly we will be a service class

  AuthService responseService = AuthService();

  // after then we will be create a function

    Future<User?> signupRepository({required String email,required String password,}) async {

     User? user = await responseService.signUp(email, password);

     return user;
  }


}