import 'dart:convert';

import 'package:controle_financeiro/models/user.dart';
import 'package:http/http.dart' as http;

class UserApi {
  String url = 'http://192.168.1.101:3000/api/Usuario';

  Future <User> getLoginUser(String user, String password) async{
    final response = await http.get('$url/GetLogin?usuario=$user&senha=$password');
    final jsonData = json.decode(response.body);
    return User.fromJson(jsonData);
  }
}