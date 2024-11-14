import 'package:isar/isar.dart';

part 'region.g.dart';

@collection
class Region {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  int? regionId;
  String? countryCode;
  String? regionNameAr;
  String? regionNameEn;
  String? enabled;
  int? coordinatorId;
  int? supervisorId;
  int? trCoordinatorId;
  int? salesManager;
  int? trainingManager;
  int? inspectionManager;

  Region({
    this.regionId,
    this.countryCode,
    this.regionNameAr,
    this.regionNameEn,
    this.enabled,
    this.coordinatorId,
    this.supervisorId,
    this.trCoordinatorId,
    this.salesManager,
    this.trainingManager,
    this.inspectionManager,
  });
}
