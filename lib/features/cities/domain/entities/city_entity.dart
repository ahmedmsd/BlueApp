import 'package:equatable/equatable.dart';

class CityEntity extends Equatable {
  final int id;
  final String name;
  final String countryCode;
  final int regionId;

  const CityEntity({
    required this.id,
    required this.name,
    required this.countryCode,
    required this.regionId,
  });

  factory CityEntity.fromJson(Map<String, dynamic> json) => CityEntity(
        id: json["ID"],
        name: json["Name"],
        countryCode: json["CountryCode"],
        regionId: json["region_id"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "Name": name,
        "CountryCode": countryCode,
        "region_id": regionId,
      };

  @override
  List<Object?> get props => [
        id,
        name,
        countryCode,
        regionId,
      ];
}
