import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/checklists/domain/entities/checklist_details_entity.dart';
import 'package:test_workapp/features/checklists/domain/repositories/checklists_repository.dart';

class GetChecklistsDetailsUseCase
    extends UseCase<List<ChecklistDetailsEntity>, NoParams> {
  final ChecklistsRepository checklistsRepository;

  GetChecklistsDetailsUseCase({required this.checklistsRepository});
  @override
  Future<Either<Failure, List<ChecklistDetailsEntity>>> call(
      NoParams params) async {
    return await checklistsRepository.getChecklistsDetails(params);
  }
}
