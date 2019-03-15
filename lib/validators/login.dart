import 'dart:async';

mixin LoginValidators{

  var userValidator = StreamTransformer<String,String>.fromHandlers(
    handleData: (userName,sink){
      if(userName.length>2){
        sink.add(userName);
      }else{
        sink.addError("Usuario requer mais de 2 caracteres.");
      }
    }
  );


  var passwordValidator = StreamTransformer<String,String>.fromHandlers(
    handleData: (password,sink){
      if(password.length>4){
        sink.add(password);
      }else{
        sink.addError("Password requer mais de 4 caracteres.");
      }
    }
  );
}