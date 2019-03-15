import 'package:controle_financeiro/blocs/user_bloc.dart';
import 'package:controle_financeiro/screens/home.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final bloc = BlocProvider.of<UserBloc>(context);

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    Widget userField(UserBloc bloc) {
    return StreamBuilder(
      stream: bloc.userName,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.userNameChanged,
          decoration: InputDecoration(
            hintText: 'Usuário',
            labelText: 'Usuário',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget passwordField(UserBloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.passwordChanged,
          decoration: InputDecoration(
            hintText: 'Password',
            labelText: 'Password',
            
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  changeThePage(BuildContext context) {
    Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context)=>HomeView()));
  }

  Widget submitButton(UserBloc bloc) {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return RaisedButton(
          child: Text('Login'),
          color: Colors.blue,
          //onPressed: snapshot.hasData ? bloc.login() : null,
           onPressed: () async {
            var result = await bloc.login();
            if(result == true) changeThePage(context);
            else null;
          }
        );
      },
    );
  }
    
  
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            userField(bloc),
            SizedBox(height: 8.0),
            passwordField(bloc),
            SizedBox(height: 24.0),
            submitButton(bloc),
          ],
        ),
      ),
    );
  }
}