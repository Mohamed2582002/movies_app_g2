import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart'as http ;
import 'package:http/http.dart';
import 'package:movies/core/api/api_constants.dart';
import 'package:movies/core/api/end_points.dart';
import 'package:movies/featuers/Auth/auth_state.dart';

class AuthCubit extends Cubit<AuthState>{
  AuthCubit() : super(AuthInitialState());
  // register (http)
void register ({required String name ,
  required String email,
  required String password,
  required String confirmPassword,
  required String phone,
  required String avatarID
})async{
  emit(RegisterLoading());
  Response response =await http.post(
     Uri.https(ApiConstants.baseUrl,EndPoints.registerEndPoint,
   {
    "name" : name,
    "email" : email,
    "password" : password,
    "confirmPassword" : confirmPassword,
    "phone" : phone,
    "avaterId" : avatarID
  }
  )
  );
  var responseBody = jsonDecode(response.body);
  if (responseBody['User created successfully'] ==true)
  {
    emit(RegisterSuccess());
  }else{
    emit(RegisterError(responseBody['message']));
  }
 }
  //Login (http)
void login ({
    required String email,
    required String password,
})async{
  emit(LoginLoading());
  Response response =await http.post(
      Uri.https(ApiConstants.baseUrl,EndPoints.loginEndPoint,
       {
        "email" : email,
        "password" : password,
      }
  )
  );
  var responseBody = jsonDecode(response.body);
  if (responseBody['Success Login'] ==true)  {
    emit(LoginSuccess());
  }else{
    emit(LoginError(responseBody['message']));
  }
}
}