import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:two_beauty/core/usecase/usecase.dart';
import 'package:two_beauty/features/2beauty/domain/entities/login_get_token_entity.dart';
import 'package:two_beauty/features/2beauty/domain/usecases/login/get_login_usecase.dart';
import 'package:two_beauty/features/2beauty/domain/usecases/login/post_login_usecase.dart';
import 'package:two_beauty/features/2beauty/presentation/bloc/splash/splash_state.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  final PostLoginUsecase _postLoginUsecase;
  final GetLoginUsecase _getLoginUsecase;

  SplashCubit(this._postLoginUsecase, this._getLoginUsecase)
      : super(const InitSplashState());

  Future<void> postLogin(LoginGetTokenEntity params) async {
    await _postLoginUsecase.call(params).then((userReturn) {
      if (userReturn.isRight()) {
        emit(const SentSplashState());
      } else {
        emit(const ErrorSplashState('Nome de usuário ou senha incorreta'));
      }
    });
  }

  Future<void> getLogin() async {
    await _getLoginUsecase.call(NoParams()).then((userLogin) {
      userLogin.fold(
        (failure) => emit(const NoLoginSplashState()),
        (dataUser) {
          postLogin(dataUser);
        },
      );
    });
  }
}
