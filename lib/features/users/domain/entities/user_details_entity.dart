import 'package:equatable/equatable.dart';

class UserDetailsEntity extends Equatable {
  final int userId;
  final String fullNameEn;
  final String? mobile;
  final int empCode;
  final String email;
  final String? digitalSig;
  final String? badgeNo;
  final int? jobTitleId;

  const UserDetailsEntity({
    required this.userId,
    required this.fullNameEn,
    required this.mobile,
    required this.empCode,
    required this.email,
    required this.digitalSig,
    required this.badgeNo,
    required this.jobTitleId,
  });

  factory UserDetailsEntity.fromJson(Map<String, dynamic> json) =>
      UserDetailsEntity(
        userId: json["user_id"],
        fullNameEn: json["full_name_en"],
        mobile: json["mobile"],
        empCode: json["emp_code"],
        email: json["email"],
        digitalSig: json["digital_sig"],
        badgeNo: json["badge_no"],
        jobTitleId: json["job_title_id"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "full_name_en": fullNameEn,
        "mobile": mobile,
        "emp_code": empCode,
        "email": email,
        "digital_sig": digitalSig,
        "badge_no": badgeNo,
        "job_title_id": jobTitleId,
      };

  @override
  List<Object?> get props => [
        userId,
        fullNameEn,
        mobile,
        empCode,
        email,
        digitalSig,
        badgeNo,
        jobTitleId,
      ];
}
