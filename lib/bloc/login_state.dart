class LoginState{
  final bool isLoading;
  final bool isSuccess;
  final bool isFail;

  LoginState({required this.isFail, required this.isLoading, required this.isSuccess});

  factory LoginState.initial(){
    return LoginState(isFail: true, isLoading: false, isSuccess: false);
  }

  factory LoginState.loading(){
    return LoginState(isFail: false, isLoading: true, isSuccess: false);
  }

  factory LoginState.success(){
    return LoginState(isFail: false, isLoading: false, isSuccess: true);
  }
}