abstract class FireBaseState {}

class SignupInitial extends FireBaseState {}

class ResourceInProgressState  extends FireBaseState {}

class ResourceDataIsLoadedState  extends FireBaseState {}

class SignupFailure extends FireBaseState {
  final String errorMessage;

  SignupFailure(this.errorMessage);
}
