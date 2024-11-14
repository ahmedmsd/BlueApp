import 'package:isar/isar.dart';

part 'city.g.dart';

@collection
class City {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  int? iD;
  String? name;
  String? countryCode;
  int? regionId;

  City({
    this.iD,
    this.name,
    this.countryCode,
    this.regionId,
  });
}
