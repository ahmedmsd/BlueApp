import 'package:equatable/equatable.dart';

class LoadTestEntity extends Equatable {
  final String testBy;
  final String procedureNo;
  final String refStandard;
  final String weightCalculation;
  final String loadCellUsed;

  const LoadTestEntity({
    required this.testBy,
    required this.procedureNo,
    required this.refStandard,
    required this.weightCalculation,
    required this.loadCellUsed,
  });

  factory LoadTestEntity.fromJson(Map<String, dynamic> json) => LoadTestEntity(
        testBy: json["test_by"],
        procedureNo: json["procedure_no"],
        refStandard: json["ref_standard"],
        weightCalculation: json["weight_calculation"],
        loadCellUsed: json["load_cell_used"],
      );

  Map<String, dynamic> toJson() => {
        "test_by": testBy,
        "procedure_no": procedureNo,
        "ref_standard": refStandard,
        "weight_calculation": weightCalculation,
        "load_cell_used": loadCellUsed,
      };

  @override
  List<Object?> get props => [
        testBy,
        procedureNo,
        refStandard,
        weightCalculation,
        loadCellUsed,
      ];
}
