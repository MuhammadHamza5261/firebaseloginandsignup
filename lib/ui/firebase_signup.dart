import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseloginandsignup/bloc/firebase_bloc.dart';
import 'package:firebaseloginandsignup/bloc/firebase_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/firebase_event.dart';
import '../colors/colors.dart';
import 'firebase_login.dart';
import 'home_screen.dart';



class FireBaseLogin extends StatelessWidget {
  const FireBaseLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.black,
      body: FireBaseSTF(),
    );
  }
}
///stf
class FireBaseSTF extends StatefulWidget {
  const FireBaseSTF({Key? key}) : super(key: key);

  @override
  State<FireBaseSTF> createState() => _FireBaseSTFState();
}

class _FireBaseSTFState extends State<FireBaseSTF> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();








  late double height;
  late double width;





  @override
  Widget build(BuildContext context) {


    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;


    return SafeArea(
      child: BlocConsumer<FireBaseBloc,FireBaseState>(
        builder: (context,state) {
        return  Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/mascot_firebase-logo.png', width: 400,),
                  const Text(
                 'Firebase Signup',
                  style: TextStyle(
                  fontSize: 32.0,
                  color: AppColors.pinkColor
                  ),),
                  const SizedBox(
                    height: 20,
                  ),
              Container(
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      30.0), // Set the border radius
                  // Set the background color
                ),
                child: TextFormField(
                  controller: _userController,
                  style: const TextStyle(
                    color: Colors.pink,
                  ),
                  // controller: email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      // return 'Please enter your email';
                    }
                  },
                  cursorColor: AppColors.pinkColor,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 17.0, top: 10.0,),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.pinkColor, width: 1.2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.pinkColor, width: 1.2),
                      ),
                      hintText: 'User',
                      labelText: 'User',
                      labelStyle: TextStyle(
                          color: AppColors.pinkColor
                      ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      30.0), // Set the border radius
                  // Set the background color
                ),
                child: TextFormField(
                  controller: _emailController,
                  style: const TextStyle(
                    color: Colors.pink,
                  ),
                  // controller: email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      // return 'Please enter your email';
                    }
                  },
                  cursorColor: AppColors.pinkColor,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 17.0, top: 10.0,),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.pinkColor, width: 1.2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.pinkColor, width: 1.2),
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
                width: width * 0.9,
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      // return 'Please enter your email';
                    }
                  },
                  cursorColor: AppColors.pinkColor,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 17.0, top: 10.0,),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.pinkColor, width: 1.2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.pinkColor, width: 1.2),
                      ),
                      hintText: 'password',
                      labelText: 'password',
                      labelStyle: TextStyle(
                          color: AppColors.pinkColor
                      )
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: width * 0.9,
                height: height * 0.055,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: AppColors.pinkColor
                  ),
                  onPressed: () async {
                    BlocProvider.of<FireBaseBloc>(context).add(
                      FireBaseEvent(
                          email: _emailController.text,
                          password: _passwordController.text,
                      ),
                    ) ;

                    // await FirebaseAuth.instance
                    //     .createUserWithEmailAndPassword(
                    //     email: _emailController.text,
                    //     password: _passwordController.text).
                    //      then((value) =>
                    //     Navigator.of(context).push(MaterialPageRoute(
                    //         builder: (context) => const HomeScreenSTL())),
                    //     onError: (e) => print(e.toString()));

                  },
                  child: state is ResourceInProgressState ?
                  const CircularProgressIndicator(color: Colors.white,)
                  :const Text(
                    'Sign Up',
                    style: TextStyle(
                    fontSize: 21.0,
                  ),),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (
                      context) => const FireBaseLoginSTL()));
                },
                child: const Text(
                  'Already have an account?Login',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],


          ),

        );
        },
        listener: (context,state){
          if(state is ResourceDataIsLoadedState){
           Navigator.of(context).push(
             MaterialPageRoute(builder: (context) => const HomeScreenSTL()),

           );

          }
          else if(state is SignupFailure){

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red,
                  content: Text(
                    state.errorMessage,
                  ),
              ),
            ) ;

          }



        },
      ),
    );
  }
}

