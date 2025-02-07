class RegisterResponse {
  String? message;
  registerModel? data;

  RegisterResponse({this.message, this.data});

  RegisterResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new registerModel.fromJson(json['data']) : null;
  }


}

class registerModel {
  String? email;
  String? password;
  String? name;
  String? phone;
  int? avaterId;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  registerModel(
      {this.email,
        this.password,
        this.name,
        this.phone,
        this.avaterId,
        this.sId,
        this.createdAt,
        this.updatedAt,
        this.iV});

  registerModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    name = json['name'];
    phone = json['phone'];
    avaterId = json['avaterId'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

}