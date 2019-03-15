import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:controle_financeiro/blocs/user_bloc.dart';
import 'package:controle_financeiro/screens/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: UserBloc(),
      child:  MaterialApp(
            title: 'FlutterTube',
            debugShowCheckedModeBanner: false,
            home: LoginView(),
          ),
    );
  }
}
