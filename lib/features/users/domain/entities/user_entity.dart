import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int userId;
  final String username;
  final String email;
  final String password;
  final String enabled;
  final String userHash;
  final int accessLevel;

  const UserEntity({
    required this.userId,
    required this.username,
    required this.email,
    required this.password,
    required this.enabled,
    required this.userHash,
    required this.accessLevel,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) => UserEntity(
        userId: json["user_id"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        enabled: json["enabled"],
        userHash: json["user_hash"],
        accessLevel: json["access_level"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "username": username,
        "email": email,
        "password": password,
        "enabled": enabled,
        "user_hash": userHash,
        "access_level": accessLevel,
      };

  @override
  List<Object?> get props => [
        userId,
        username,
        email,
        password,
        enabled,
        userHash,
        accessLevel,
      ];
}
