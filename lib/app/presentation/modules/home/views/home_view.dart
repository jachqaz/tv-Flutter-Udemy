import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/repository/authentication_repository.dart';
import '../../../routes/routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () async {
              final AuthenticationRepository authenticationRepository =
                  context.read();
              authenticationRepository.signOut();
              Navigator.pushReplacementNamed(context, Routes.signIn);
            },
            child: Text('Sign Out')),
      ),
    );
  }
}
