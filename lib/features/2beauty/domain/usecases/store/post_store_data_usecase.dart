import 'package:injectable/injectable.dart';
import 'package:two_beauty/core/usecase/usecase.dart';
import 'package:two_beauty/features/2beauty/data/repositories/store_repository.dart';
import 'package:two_beauty/features/2beauty/domain/entities/store_entity.dart';
import 'package:two_beauty/features/2beauty/domain/repositories/i_store_repository.dart';

@injectable
class PostStoreDataUsecase extends UseCase<StoreEntity, NoParams> {
  final IStoreRepository _iStoreRepository = StoreRepository();

  @override
  Future<StoreEntity> execute(NoParams params) async {
    return await _iStoreRepository.postStoreData(params);
  }
}
