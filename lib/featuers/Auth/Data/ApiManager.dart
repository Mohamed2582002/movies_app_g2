// import 'dart:convert';
// import 'package:movies/featuers/Auth/Data/Models/RegisterModel.dart';
// import '../../../core/api/api_constants.dart';
// import '../../../core/api/end_points.dart';
// import 'package:http/http.dart' as http ;
//
// import 'Models/LoginModel.dart';
//
// class ApiManager {
//   /// register
//   Future<RegisterResponse>? register({
//     required String name,
//     required String password,
//     required String email,
//     required String confirmPassword,
//     required String phone,
//     required String avatarId,
//   }) async {
//     Uri url = Uri.https(ApiConstants.baseUrl, EndPoints.registerEndPoint, {
//       "name": name,
//       "email": email,
//       "password": password,
//       "confirmPassword": confirmPassword,
//       "phone": phone,
//       "avaterId": avatarId,
//     });
//
//     try {
//       var response = await http.post(url);
//       if (response.statusCode == 200) {
//         var responseBody = response.body; // JSON string
//         var json = jsonDecode(responseBody); // JSON object
//         return RegisterResponse.fromJson(json); // Return SourceResponse object
//       } else {
//         // Handle HTTP error response
//         return RegisterResponse(
//           message: "Failed to load sources. Error code: ${response.statusCode}",
//         );
//       }
//     } catch (e) {
//       // Handle any exception during the request
//       return RegisterResponse(
//         message: "An error occurred: $e",
//       );
//     }
//   }
//
//   //login
// Future<LoginResponse>? login ({
//   required String email,
//   required String password,
// })async{
//     Uri url =Uri.https(ApiConstants.baseUrl,EndPoints.loginEndPoint,{
//         "email": email,
//         "password":password
//
//     });
//
//     try {
//       var response = await http.post(url);
//       if (response.statusCode == 200) {
//         var responseBody = response.body; // JSON string
//         var json = jsonDecode(responseBody); // JSON object
//         return LoginResponse.fromJson(json); // Return SourceResponse object
//       } else {
//         // Handle HTTP error response
//         return LoginResponse(
//           message: "Failed to load sources. Error code: ${response.statusCode}",
//         );
//       }
//     } catch (e) {
//       // Handle any exception during the request
//       return LoginResponse(
//         message: "An error occurred: $e",
//       );
//     }}
//
// }
