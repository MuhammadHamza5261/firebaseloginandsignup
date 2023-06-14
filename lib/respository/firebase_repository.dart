


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import '../service/firebase_service.dart';

class FireBaseRepository {

  AuthService responseService = AuthService();

    Future<User?> signupRepository({required String email,required String password}) async {

     User? user = await responseService.signUp(email, password);

     return user;
  }


}