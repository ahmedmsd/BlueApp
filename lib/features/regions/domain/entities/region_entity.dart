import 'package:equatable/equatable.dart';

class RegionEntity extends Equatable {
  final int regionId;
  final String countryCode;
  final String regionNameAr;
  final String regionNameEn;
  final String enabled;
  final int coordinatorId;
  final int supervisorId;
  final int trCoordinatorId;
  final int salesManager;
  final int trainingManager;
  final int inspectionManager;

  const RegionEntity({
    required this.regionId,
    required this.countryCode,
    required this.regionNameAr,
    required this.regionNameEn,
    required this.enabled,
    required this.coordinatorId,
    required this.supervisorId,
    required this.trCoordinatorId,
    required this.salesManager,
    required this.trainingManager,
    required this.inspectionManager,
  });

  factory RegionEntity.fromJson(Map<String, dynamic> json) => RegionEntity(
        regionId: json["region_id"],
        countryCode: json["country_code"],
        regionNameAr: json["region_name_ar"],
        regionNameEn: json["region_name_en"],
        enabled: json["enabled"],
        coordinatorId: json["coordinator_id"],
        supervisorId: json["supervisor_id"],
        trCoordinatorId: json["tr_coordinator_id"],
        salesManager: json["sales_manager"],
        trainingManager: json["training_manager"],
        inspectionManager: json["inspection_manager"],
      );

  Map<String, dynamic> toJson() => {
        "region_id": regionId,
        "country_code": countryCode,
        "region_name_ar": regionNameAr,
        "region_name_en": regionNameEn,
        "enabled": enabled,
        "coordinator_id": coordinatorId,
        "supervisor_id": supervisorId,
        "tr_coordinator_id": trCoordinatorId,
        "sales_manager": salesManager,
        "training_manager": trainingManager,
        "inspection_manager": inspectionManager,
      };

  @override
  List<Object?> get props => [
        regionId,
        countryCode,
        regionNameAr,
        regionNameEn,
        enabled,
        coordinatorId,
        supervisorId,
        trCoordinatorId,
        salesManager,
        trainingManager,
        inspectionManager,
      ];
}
