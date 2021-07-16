
class LoginState{}

class GetFailureState extends LoginState{
  final String error;

  GetFailureState(this.error);
}

class LoggedInState extends LoginState{}
class LoggedOutState extends LoginState{}
class LoadingState extends LoginState{}