import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/repository/authentication_repository.dart';
import '../../../global/controllers/session_controller.dart';
import '../../../routes/routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final SessionController sessionController = context.watch();
    final user = sessionController.state!;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              user.id.toString() ?? '',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              user.username ?? '',
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
                onPressed: () async {
                  final AuthenticationRepository authenticationRepository =
                      context.read();
                  authenticationRepository.signOut();
                  sessionController.signOut();
                  Navigator.pushReplacementNamed(context, Routes.signIn);
                },
                child: Text('Sign Out')),
          ],
        ),
      ),
    );
  }
}
