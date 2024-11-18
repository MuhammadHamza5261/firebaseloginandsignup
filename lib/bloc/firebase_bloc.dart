import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../respository/firebase_repository.dart';
import 'firebase_event.dart';
import 'firebase_state.dart';

class FireBaseBloc extends Bloc<FireBaseEvent, FireBaseState>
{

  final fireBaseRepository = FireBaseRepository();


  FireBaseBloc() : super(SignupInitial())
  {
    on<FireBaseEvent>((event,emit) async
    {

      if(event is FireBaseEvent)
      {
        emit(ResourceInProgressState());

        try
        {
          User? userInformation = await fireBaseRepository.signupRepository(
              email: event.email,
              password: event.password,
          );

          if(userInformation != null)
          {
           emit (ResourceDataIsLoadedState());
          }

        }
        catch(e)
        {
          emit (SignupFailure(e.toString()));
        }
      }
    });
  }





}

