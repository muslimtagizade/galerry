import 'package:dio/dio.dart';
import 'package:test_photo/data/model/user_model.dart';

import 'dio_settings.dart';

class ServerApi {
  DioSettings _dioSettings;
  Dio _dio;

  Map<String, dynamic> _request = {"PageNumber": 1, "PageSize": 100};

  static ServerApi _instance = new ServerApi.internal();
  factory ServerApi() => _instance;
  ServerApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }

  Future<UserModel> signIn({String email, String phone, String fullname,
      String password, String userName, String birthDay}) async {
    Response<String> response = await _dio.post(
      "/api/users",
      queryParameters: {
        "email": email,
        "phone": phone,
        "fullName": fullname,
        "password": password,
        "username": userName,
        "birthday": birthDay,
        "roles": "ROLE USER"
      },
    );
    return usersFromJson(response.toString());
  }
}
