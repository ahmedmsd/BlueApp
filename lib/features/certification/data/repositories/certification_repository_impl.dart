import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/exceptions.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/network_info/network_info.dart';
import 'package:test_workapp/features/certification/data/datasources/certification_remote_data_source.dart';
import 'package:test_workapp/features/certification/domain/entities/certification_entity.dart';
import 'package:test_workapp/features/certification/domain/repositories/certification_repository.dart';
import 'package:test_workapp/features/certification/domain/usecases/create_certification_use_case.dart';

class CertificationRepositoryImpl implements CertificationRepository {
  final NetworkInfo networkInfo;
  final CertificationRemoteDataSource certificationRemoteDataSource;

  CertificationRepositoryImpl({
    required this.networkInfo,
    required this.certificationRemoteDataSource,
  });

  @override
  Future<Either<Failure, CertificationEntity>> createCertification({
    required CreateCertificationParams certificationParams,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteCreateCertification =
            await certificationRemoteDataSource.createCertification(
                createCertificationParams: certificationParams);

        return Right(remoteCreateCertification);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }
}
