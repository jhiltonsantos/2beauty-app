import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:two_beauty/core/error/failures.dart';
import 'package:two_beauty/core/usecase/usecase.dart';
import 'package:two_beauty/features/2beauty/data/repositories/store_repository.dart';
import 'package:two_beauty/features/2beauty/domain/entities/store_get_entity.dart';
import 'package:two_beauty/features/2beauty/domain/repositories/i_store_repository.dart';

@injectable
class GetStoreDataUsecase extends UseCase<List<StoreGetEntity>, String> {
  final IStoreRepository _iStoreRepository = StoreRepository();

  @override
  Future<Either<Failure, List<StoreGetEntity>>> call(String params) async {
    return await _iStoreRepository.getStoreData(params);
  }
}
