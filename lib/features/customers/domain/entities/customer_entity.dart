import 'package:equatable/equatable.dart';

class CustomerEntity extends Equatable {
  final int customerId;
  final String customerName;

  const CustomerEntity({
    required this.customerId,
    required this.customerName,
  });

  factory CustomerEntity.fromJson(Map<String, dynamic> json) => CustomerEntity(
        customerId: json["customer_id"],
        customerName: json["customer_name"],
      );

  Map<String, dynamic> toJson() => {
        "customer_id": customerId,
        "customer_name": customerName,
      };

  @override
  List<Object?> get props => [
        customerId,
        customerName,
      ];
}
