class User {
  bool? status;
  String? message;
  List<Patients>? patients;

  User({this.status, this.message, this.patients});

  User.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['patients'] != null) {
      patients = <Patients>[];
      json['patients'].forEach((v) {
        patients!.add(new Patients.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.patients != null) {
      data['patients'] = this.patients!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Patients {
  int? id;
  int? roleId;
  String? firstName;
  String? lastName;
  String? phone;
  String? gender;
  String? address;
  String? image;
  String? email;
  int? status;

  Patients(
      {this.id,
      this.roleId,
      this.firstName,
      this.lastName,
      this.phone,
      this.gender,
      this.address,
      this.image,
      this.email,
      this.status});

  Patients.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roleId = json['role_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    phone = json['phone'];
    gender = json['gender'];
    address = json['address'];
    image = json['image'];
    email = json['email'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['role_id'] = this.roleId;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['phone'] = this.phone;
    data['gender'] = this.gender;
    data['address'] = this.address;
    data['image'] = this.image;
    data['email'] = this.email;
    data['status'] = this.status;
    return data;
  }
}