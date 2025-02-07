import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:movies/featuers/Auth/Data/ApiManager.dart';
import 'package:movies/featuers/Auth/Data/Models/LoginModel.dart';
import 'package:movies/featuers/Auth/Data/Models/RegisterModel.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.apiManager) : super(AuthInitial());

  ApiManager apiManager;

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();
  final avatarIdController = TextEditingController();

  Future<RegisterResponse> register() async {
    emit(RegisterLoading());
    final result = await apiManager.register(
      name: nameController.text,
      password: passwordController.text,
      email: emailController.text,
      confirmPassword: confirmPasswordController.text,
      phone: phoneController.text,
      avatarId: avatarIdController.text,
    );
    emit(RegisterSuccess());
    return result!;
  }

  Future<LoginResponse> Login() async {
    emit(LoginLoading());
    final result = await apiManager.login(
      password: passwordController.text,
      email: emailController.text,
    );
    emit(LoginSuccess());
    return result!;
  }
}
