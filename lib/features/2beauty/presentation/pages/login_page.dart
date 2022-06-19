// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_beauty/features/2beauty/presentation/bloc/login/login_cubit.dart';
import 'package:two_beauty/features/2beauty/presentation/bloc/login/login_state.dart';
import 'package:two_beauty/features/2beauty/presentation/resources/colors_manager.dart';
import 'package:two_beauty/features/2beauty/presentation/resources/widgets/error_page.dart';
import 'package:two_beauty/features/2beauty/presentation/resources/widgets/failure_dialog.dart';
import 'package:two_beauty/features/2beauty/presentation/resources/widgets/login_form_widget.dart';
import 'package:two_beauty/features/2beauty/presentation/resources/widgets/progress_widget.dart';
import 'package:two_beauty/features/2beauty/presentation/resources/widgets/sent_login_user_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        if (state is LoadingLoginState) {
          return const ProgressWidget();
        }
        if (state is LoadedLoginState) {
          return const LoginForm();
        }
        if (state is SentLoginState) {
          return const SentLoginUser();
        }
        if (state is ErrorLoginState) {
          return ErrorLoginWidget(message: state.message);
        }
        return const ErrorPage();
      },
    );
  }
}

class ErrorLoginWidget extends StatelessWidget {
  final String message;

  const ErrorLoginWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.white_200,
        body: FailureDialog(
          message: message,
          function: () {
            BlocProvider.of<LoginCubit>(context).emit(const LoadedLoginState());
          },
        ));
  }
}
