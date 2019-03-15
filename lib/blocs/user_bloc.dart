import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:controle_financeiro/services/user_api.dart';
import 'package:controle_financeiro/validators/login.dart';
import 'package:rxdart/rxdart.dart';

class UserBloc extends Object with LoginValidators implements BlocBase{
//class UserBloc implements BlocBase{
  final _userNameController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Function(String) get userNameChanged => _userNameController.sink.add;
  Function(String) get passwordChanged => _passwordController.sink.add;

  Stream<String> get userName => _userNameController.stream.transform(userValidator);
  Stream<String> get password => _passwordController.stream.transform(passwordValidator);
  Stream<bool> get submitValid =>
      Observable.combineLatest2(userName, password, (e, p) => true);
  
  Future<bool> login() async{
    UserApi api = new UserApi();
    var user = await api.getLoginUser(_userNameController.value, _passwordController.value);
    if (user.id >=  1) return true;
    else return false;
  }
  @override
  void dispose() {
    _userNameController?.close();
    _passwordController?.close();
  }
}