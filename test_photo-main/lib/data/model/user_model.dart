// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

UserModel usersFromJson(String str) => UserModel.fromJson(json.decode(str));

String usersToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.totalItems,
    this.itemsPerPage,
    this.countOfPages,
    this.data,
  });

  final int totalItems;
  final int itemsPerPage;
  final int countOfPages;
  final List<UserData> data;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        totalItems: json["totalItems"],
        itemsPerPage: json["itemsPerPage"],
        countOfPages: json["countOfPages"],
        data:
            List<UserData>.from(json["data"].map((x) => UserData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "totalItems": totalItems,
        "itemsPerPage": itemsPerPage,
        "countOfPages": countOfPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class UserData {
  UserData({
    this.id,
    this.email,
    this.enabled,
    this.phone,
    this.fullName,
    this.username,
    this.birthday,
    this.roles,
  });

  final int id;
  final String email;
  final bool enabled;
  final String phone;
  final String fullName;
  final String username;
  final dynamic birthday;
  final List<Role> roles;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["id"],
        email: json["email"],
        enabled: json["enabled"],
        phone: json["phone"] == null ? null : json["phone"],
        fullName: json["fullName"] == null ? null : json["fullName"],
        username: json["username"],
        birthday: json["birthday"],
        roles: List<Role>.from(json["roles"].map((x) => roleValues.map[x])),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "enabled": enabled,
        "phone": phone == null ? null : phone,
        "fullName": fullName == null ? null : fullName,
        "username": username,
        "birthday": birthday,
        "roles": List<dynamic>.from(roles.map((x) => roleValues.reverse[x])),
      };
}

enum Role { ROLE_ADMIN, ROLE_USER }

final roleValues =
    EnumValues({"ROLE_ADMIN": Role.ROLE_ADMIN, "ROLE_USER": Role.ROLE_USER});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
