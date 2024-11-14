import 'package:equatable/equatable.dart';

class UserJobEntity extends Equatable {
  final int id;
  final int userId;
  final int jobTitleId;

  const UserJobEntity({
    required this.id,
    required this.userId,
    required this.jobTitleId,
  });

  factory UserJobEntity.fromJson(Map<String, dynamic> json) => UserJobEntity(
        id: json["id"],
        userId: json["user_id"],
        jobTitleId: json["job_title_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "job_title_id": jobTitleId,
      };

  @override
  List<Object?> get props => [
        id,
        userId,
        jobTitleId,
      ];
}
