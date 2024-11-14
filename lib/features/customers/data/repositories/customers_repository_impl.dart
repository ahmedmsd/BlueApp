import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/exceptions.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/network_info/network_info.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/customers/data/datasources/customers_remote_data_source.dart';
import 'package:test_workapp/features/customers/domain/entities/customer_entity.dart';
import 'package:test_workapp/features/customers/domain/repositories/customers_repository.dart';

class CustomersRepositoryImpl implements CustomersRepository {
  final NetworkInfo networkInfo;
  final CustomersRemoteDataSource customersRemoteDataSource;

  CustomersRepositoryImpl({
    required this.networkInfo,
    required this.customersRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<CustomerEntity>>> getCustomers(
      NoParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteGetCustomers =
            await customersRemoteDataSource.getCustomers(params);

        return Right(remoteGetCustomers);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }
}
