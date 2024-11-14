import 'package:isar/isar.dart';

part 'user_jobs.g.dart';

@collection
class UserJobs {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  int? iD;
  int? userId;
  int? jobTitleId;

  UserJobs({
    this.iD,
    this.userId,
    this.jobTitleId,
  });
}
