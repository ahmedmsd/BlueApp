import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/customers/domain/entities/customer_entity.dart';

abstract class CustomersRepository {
  Future<Either<Failure, List<CustomerEntity>>> getCustomers(NoParams params);
}
