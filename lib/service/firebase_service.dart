import 'package:firebase_auth/firebase_auth.dart';

class AuthService {


  //the data will be come on firebase and we can be used firebase auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


  //then it will be create a function

  Future<User?> signUp(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return userCredential.user;

    }
    catch (e) {
      throw Exception('Something went wrong');
    }
  }
}
