import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/customers/domain/entities/customer_entity.dart';
import 'package:test_workapp/features/customers/domain/repositories/customers_repository.dart';

class GetCustomersUseCase extends UseCase<List<CustomerEntity>, NoParams> {
  final CustomersRepository customersRepository;

  GetCustomersUseCase({required this.customersRepository});
  @override
  Future<Either<Failure, List<CustomerEntity>>> call(NoParams params) async {
    return await customersRepository.getCustomers(params);
  }
}
