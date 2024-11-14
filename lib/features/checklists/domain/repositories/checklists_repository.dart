import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/checklists/domain/entities/checklist_details_entity.dart';
import 'package:test_workapp/features/checklists/domain/entities/checklist_entity.dart';

abstract class ChecklistsRepository {
  Future<Either<Failure, List<ChecklistEntity>>> getChecklists(NoParams params);
  Future<Either<Failure, List<ChecklistDetailsEntity>>> getChecklistsDetails(
      NoParams params);
}
