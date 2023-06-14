import 'package:flutter/cupertino.dart';

abstract class SignupEvent {}

class FireBaseEvent extends SignupEvent {
  final String email;
  final String password;

  FireBaseEvent({required this.email, required this.password});
}
