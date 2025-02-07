/// message : "Success Login"
/// data : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY3YTM5MDZhZWMxYjRlZTg4YTZiZmI0ZSIsImVtYWlsIjoic2hlcmlmQGdtYWlsLmNvbSIsImlhdCI6MTczODc3MzkyOX0.Rl_n0PzzAKVVrfkom1DfX5cC8eDhzKIgYrv8KMmPMwM"

class LoginResponse {
  LoginResponse({
      this.message, 
      this.data,});

  LoginResponse.fromJson(dynamic json) {
    message = json['message'];
    data = json['data'];
  }
  String? message;
  String? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['data'] = data;
    return map;
  }

}