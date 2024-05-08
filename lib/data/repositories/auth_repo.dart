import 'dart:developer';

import 'package:pocks/domain/models/user_model.dart';
import 'package:pocks/shared/pb.dart';

abstract class AuthRepo {
  Future<void> login(String email, String password);
  Future<void> register(UserModel userModel);
  Future<void> logout();
}

class AuthRepoImpl implements AuthRepo {
  @override
  Future<void> login(String email, String password) async {
    // Add your login logic here
  }

  @override
  Future<void> register(UserModel userModel) async {
    final record =
        await pb.collection('users').create(body: userModel.toJson());
    log(record.toString());
    await pb.collection('users').requestVerification(userModel.email);
  }

  @override
  Future<void> logout() async {
    // Add your logout logic here
  }
}
