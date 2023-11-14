import 'package:demo_bloc/bloc/login_bloc.dart';
import 'package:demo_bloc/bloc/login_event.dart';
import 'package:demo_bloc/bloc/login_state.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var loginBloc = LoginBloc();

  onPressed(){
    loginBloc.send(LoginEvent.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: loginBloc.state,
        builder: (context, snapshot){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(snapshot.data!.isLoading)
                CircularProgressIndicator()
              else if(snapshot.data!.isFail)
                Text('Login fail')
              else
                Text('Login success'),
              ElevatedButton(onPressed: onPressed, child: Text('Send'))
            ],
          );
        },
        initialData: LoginState.initial(),
      ),
    );
  }
}
