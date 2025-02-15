import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:movies/auth/register_screen/Cubit/auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitialState());

  // register http
  void register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
    required String phone,
  }) async {
    emit(RegisterLoadingState());

    Response response = await http.post(
        Uri.parse(" https://route-movie-apis.vercel.app/auth/register"),
        body: {
          'name': name,
          'email': email,
          'password': password,
          'confirmPassword': confirmPassword,
          'phone': phone,
        });
    var responseBody = jsonDecode(response.body);
    if (responseBody['status'] == true) {
      // emit success
      emit(RegisterSuccessState());
      print(responseBody);
    } else {
      // failed
      emit(FailedToRegisterState(message: responseBody['message']));
      print(responseBody);
    }
  }
}
