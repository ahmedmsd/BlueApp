import 'package:equatable/equatable.dart';

class LoadTestDetailsEntity extends Equatable {
  final String? weightOfLoad;
  final String? spanValue;
  final String? maxDeflection;
  final String? actualDeflection;
  final String? result;

  const LoadTestDetailsEntity({
    this.weightOfLoad,
    this.spanValue,
    this.maxDeflection,
    this.actualDeflection,
    this.result,
  });

  factory LoadTestDetailsEntity.fromJson(Map<String, dynamic> json) =>
      LoadTestDetailsEntity(
        weightOfLoad: json["weight_of_load"],
        spanValue: json["span_value"],
        maxDeflection: json["max_deflection"],
        actualDeflection: json["actual_deflection"],
        result: json["result"],
      );

  Map<String, dynamic> toJson() => {
        "weight_of_load": weightOfLoad,
        "span_value": spanValue,
        "max_deflection": maxDeflection,
        "actual_deflection": actualDeflection,
        "result": result,
      };

  @override
  List<Object?> get props => [
        weightOfLoad,
        spanValue,
        maxDeflection,
        actualDeflection,
        result,
      ];
}
