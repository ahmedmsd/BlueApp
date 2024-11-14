import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/checklists/domain/entities/checklist_entity.dart';
import 'package:test_workapp/features/checklists/domain/repositories/checklists_repository.dart';

class GetChecklistsUseCase extends UseCase<List<ChecklistEntity>, NoParams> {
  final ChecklistsRepository checklistsRepository;

  GetChecklistsUseCase({required this.checklistsRepository});
  @override
  Future<Either<Failure, List<ChecklistEntity>>> call(NoParams params) async {
    return await checklistsRepository.getChecklists(params);
  }
}
