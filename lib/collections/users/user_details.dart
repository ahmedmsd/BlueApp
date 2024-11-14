import 'package:isar/isar.dart';

part 'user_details.g.dart';

@collection
class UserDetails {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  int? userId;
  String? fullNameEn;
  String? mobile;
  int? empCode;
  String? email;
  String? digitalSig;
  String? badgeNo;
  int? jobTitleId;

  UserDetails({
    this.userId,
    this.fullNameEn,
    this.mobile,
    this.empCode,
    this.email,
    this.digitalSig,
    this.badgeNo,
    this.jobTitleId,
  });
}
