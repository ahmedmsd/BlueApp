import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/features/certification/domain/entities/certification_entity.dart';
import 'package:test_workapp/features/certification/domain/usecases/create_certification_use_case.dart';

abstract class CertificationRepository {
  Future<Either<Failure, CertificationEntity>> createCertification(
      {required CreateCertificationParams certificationParams});
}
