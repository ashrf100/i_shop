import 'package:hive/hive.dart';

part 'app_user.g.dart';  

@HiveType(typeId: 3)
class AppUser {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String email;

  @HiveField(3)
  final String image;

  AppUser({
    required this.id,
    required this.name,
    required this.email,
    required this.image,
  });
}
