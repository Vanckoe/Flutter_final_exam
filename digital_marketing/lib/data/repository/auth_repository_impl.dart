import 'dart:convert';

import 'package:digital_marketing/core/data/local_constants.dart';
import 'package:digital_marketing/domain/entity/profile.dart';
import 'package:digital_marketing/domain/repository/auth_repository.dart';
import 'package:digital_marketing/domain/request_model/auth_request_model.dart';
import 'package:digital_marketing/domain/request_model/empty_request_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<bool> auth(AuthRequestModel requestModel) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(
      LocalConstants.profileKey,
      jsonEncode(
        ProfileInfo(
            phoneNumber: '+7 700 700 7000',
            name: 'Test',
            email: requestModel.email,
            password: requestModel.password,
            age: 19),
      ),
    );
    if (requestModel.email == 'test@email.com' &&
        requestModel.password == '123') {
      return true;
    }

    return false;
  }

  @override
  Future<ProfileInfo> getProfile(EmptyRequestModel requestModel) async {
    final preferences = await SharedPreferences.getInstance();
    final profileInfo = jsonDecode(await preferences.getString(LocalConstants.profileKey) ?? '');
    return ProfileInfo.fromJson(profileInfo);
  }
}
