import 'package:equatable/equatable.dart';

class SigninEntity extends Equatable {
  final int userId;
  final String username;
  final String email;
  final int empCode;
  final String accessToken;

  const SigninEntity({
    required this.userId,
    required this.username,
    required this.email,
    required this.empCode,
    required this.accessToken,
  });

  factory SigninEntity.fromJson(Map<String, dynamic> json) => SigninEntity(
        userId: json["user_id"],
        username: json["username"],
        email: json["email"],
        empCode: json["emp_code"],
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "username": username,
        "email": email,
        "emp_code": empCode,
        "access_token": accessToken,
      };

  @override
  List<Object?> get props => [
        userId,
        username,
        email,
        empCode,
        accessToken,
      ];
}
