import 'package:i_shop/core/hive/hive_service.dart';
import 'package:i_shop/features/auth/domain/entities/app_user.dart';
import 'package:i_shop/core/error/exceptions_errors.dart';

abstract class AuthLocalDataSource {
  Future<void> addUser(AppUser appuser);
  Future<void> removeUser(String id);
  Future<AppUser?> getUser();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final HiveService<AppUser> hiveService;

  AuthLocalDataSourceImpl({required this.hiveService});

  @override
  Future<void> addUser(AppUser appuser) async {
    try {
      await hiveService.put("user", appuser);
    } catch (e) {
      ErrorHandler.handleError(e);
      rethrow;
    }
  }

  @override
  Future<void> removeUser(String id) async {
    try {
      await hiveService.delete("user");
    } catch (e) {
      ErrorHandler.handleError(e);
      rethrow;
    }
  }

  @override
  Future<AppUser?> getUser() async {
    try {
      return await hiveService.get("user");
    } catch (e) {
      ErrorHandler.handleError(e);
      rethrow;
    }
  }
}
