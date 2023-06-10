import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tv/app/presentation/routes/routes.dart';

import '../../../../domain/enums.dart';
import '../../../../domain/repository/authentication_repository.dart';
import '../controller/sign_in_controller.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SignInController>(
      create: (BuildContext context) => SignInController(),
      child: Scaffold(
          body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            child: Builder(builder: (context) {
              final controller = Provider.of<SignInController>(context);
              return AbsorbPointer(
                absorbing: controller.fetching,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (text) {
                        controller.onUsernameChanged(text);
                      },
                      decoration: InputDecoration(hintText: 'UserName'),
                      validator: (text) {
                        text = text?.trim().toLowerCase() ?? '';
                        if (text.isEmpty) {
                          return 'Invalid username';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (text) {
                          controller.onPasswordChanged(text);
                        },
                        decoration: InputDecoration(hintText: 'Password'),
                        validator: (text) {
                          text = text?.replaceAll(' ', '') ?? '';
                          if (text.length < 4) {
                            return 'Invalid password';
                          }
                          return null;
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    if (controller.fetching)
                      CircularProgressIndicator()
                    else
                      MaterialButton(
                        onPressed: () {
                          final isValid = Form.of(context).validate();
                          if (isValid) {
                            _submit(context);
                          }
                        },
                        color: Colors.blue,
                        child: Text('Sign In'),
                      ),
                  ],
                ),
              );
            }),
          ),
        ),
      )),
    );
  }

  Future<void> _submit(BuildContext context) async {
    final SignInController controller = context.read();
    controller.onFetchingChanged(true);
    final AuthenticationRepository authenticationRepository = context.read();
    final result = await authenticationRepository.sigIn(
        controller.username, controller.password);
    if (!mounted) {
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
