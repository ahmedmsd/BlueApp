import 'package:isar/isar.dart';

part 'user.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  int? userId;
  String? userName;
  String? email;
  String? password;
  String? enabled;
  String? userHash;
  int? accessLevel;

  User({
    this.userId,
    this.userName,
    this.email,
    this.password,
    this.enabled,
    this.userHash,
    this.accessLevel,
  });
}
