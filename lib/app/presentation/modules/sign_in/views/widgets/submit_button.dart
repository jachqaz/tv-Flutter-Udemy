import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../domain/enums.dart';
import '../../../../../domain/repository/authentication_repository.dart';
import '../../../../routes/routes.dart';
import '../../controller/sign_in_controller.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    final SignInController controller = Provider.of(context);
    if (controller.state.fetching)
      return CircularProgressIndicator();
    else
      return MaterialButton(
        onPressed: () {
          final isValid = Form.of(context).validate();
          if (isValid) {
            _submit(context);
          }
        },
        color: Colors.blue,
        child: Text('Sign In'),
      );
  }

  Future<void> _submit(BuildContext context) async {
    final SignInController controller = context.read();
    controller.onFetchingChanged(true);
    final AuthenticationRepository authenticationRepository = context.read();
    final result = await authenticationRepository.sigIn(
        controller.state.username, controller.state.password);
    if (!controller.mounted) {
      return;
    }
    result.when((failure) {
      controller.onFetchingChanged(false);
      final message = {
        SignInFailure.notFound: 'Not Found',
        SignInFailure.unauthorized: 'Invalid password',
        SignInFailure.unknown: 'Error',
        SignInFailure.network: 'Network Error',
      }[failure];
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message!)));
    }, (user) {
      Navigator.pushReplacementNamed(context, Routes.home);
    });
  }
}
