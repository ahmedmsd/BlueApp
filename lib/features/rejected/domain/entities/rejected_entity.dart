import 'package:equatable/equatable.dart';

class RejectedEntity extends Equatable {
  final int report_id;
  final String client_name;
  final String service_provider;
  final int eq_type;
  final String eq_serial;
  final String sticker_no;
  final String work_location;
  final DateTime inspection_date;
  final String inspection_report_no;
  final String inspector_name;
  final String report_file;

  const RejectedEntity({
    required this.report_id,
    required this.client_name,
    required this.service_provider,
    required this.eq_type,
    required this.eq_serial,
    required this.sticker_no,
    required this.work_location,
    required this.inspection_date,
    required this.inspection_report_no,
    required this.inspector_name,
    required this.report_file,
  });

  factory RejectedEntity.fromJson(Map<String, dynamic> json) => RejectedEntity(
        report_id: json["report_id"],
        client_name: json["client_name"],
        service_provider: json["service_provider"],
        eq_type: json["eq_type"],
        eq_serial: json["eq_serial"],
        sticker_no: json["sticker_no"],
        work_location: json["work_location"],
        inspection_date: json["inspection_date"],
        inspection_report_no: json["inspection_report_no"],
        inspector_name: json["inspector_name"],
        report_file: json["report_file"],
      );

  Map<String, dynamic> toJson() => {
        "report_id": report_id,
        "client_name": client_name,
        "service_provider": service_provider,
        "eq_type": eq_type,
        "eq_serial": eq_serial,
        "sticker_no": sticker_no,
        "work_location": work_location,
        "inspection_date": inspection_date,
        "inspection_report_no": inspection_report_no,
        "inspector_name": inspector_name,
        "report_file": report_file,
      };

  @override
  List<Object?> get props => [
        report_id,
        client_name,
        service_provider,
        eq_type,
        eq_serial,
        sticker_no,
        work_location,
        inspection_date,
        inspection_report_no,
        inspector_name,
        report_file,
      ];
}
