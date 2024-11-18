import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseloginandsignup/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/firebase_bloc.dart';
import '../bloc/firebase_event.dart';
import '../colors/colors.dart';
import 'firebase_signup.dart';
import 'home_screen.dart';
///stl
class FireBaseLoginSTL extends StatelessWidget {
  const FireBaseLoginSTL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      body: FireBaseLoginSTF(),
    );
  }
}
///stf
class FireBaseLoginSTF extends StatefulWidget {
  const FireBaseLoginSTF({Key? key}) : super(key: key);

  @override
  State<FireBaseLoginSTF> createState() => _FireBaseLoginSTFState();
}

class _FireBaseLoginSTFState extends State<FireBaseLoginSTF> {


  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final confirmPassword = TextEditingController();



  @override
  Widget build(BuildContext context) {
   var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/mascot_firebase-logo.png',width: 400,),
              const Text('Firebase Login',style: TextStyle(
                  fontSize: 32.0,
                  color: AppColors.pinkColor
              ),),
              const SizedBox(
                height: 20,
              ),
      
              const SizedBox(
                height: 20,
              ),
              Container(
                width: width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0), // Set the border radius
                  // Set the background color
                ),
                child: TextFormField(
                  controller: _emailController,
                  style: const TextStyle(
                    color: Colors.pink,
                  ),
                  // controller: email,
                  validator: (value){
                    if(value == null || value.isEmpty ){
                      // return 'Please enter your email';
                    }
                  },
                  cursorColor: AppColors.pinkColor,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 17.0,top:10.0,),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.pinkColor, width: 1.2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.pinkColor, width: 1.2),
                      ),
                      hintText: 'Email',
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          color: AppColors.pinkColor
                      )
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0), // Set the border radius
                  // Set the background color
                ),
                child: TextFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    color: Colors.pink,
                  ),
                  // controller: email,
                  validator: (value){
                    if(value == null || value.isEmpty ){
                      // return 'Please enter your email';
                    }
                  },
                  cursorColor: AppColors.pinkColor,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 17.0,top:10.0,),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.pinkColor, width: 1.2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.pinkColor, width: 1.2),
                      ),
                      hintText: 'password',
                      labelText: 'password',
                      labelStyle: TextStyle(
                          color: AppColors.pinkColor
                      ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: width*0.9,
                height: height*0.055,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: AppColors.pinkColor
                  ),
                  onPressed: () async {
      
                    await FirebaseAuth.instance.signInWithEmailAndPassword
                      (email: _emailController.text, password: _passwordController.text)
                        .then((value) =>
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreenSTL())) ,
                        onError: (e) => debugPrint(e.toString()));
                  },
                  child: const Text('Login',
                    style: TextStyle(
                    fontSize: 21.0,
                  ),),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
             TextButton(
                 onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FireBaseLogin()));
                 },
                 child: const Text(
                   'Sign Up',
                   style: TextStyle(
                     fontSize: 23.0,
                     color: Colors.white,
                   ),
                 ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}

