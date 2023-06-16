import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/repository/account_repository.dart';
import '../../../../domain/repository/authentication_repository.dart';
import '../../../../domain/repository/connectivity_repository.dart';
import '../../../routes/routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _init();
    });
  }

  Future<void> _init() async {
    final routeName = await () async {
      final ConnectivityRepository connectivityRepository = context.read();
      final AuthenticationRepository authenticationRepository = context.read();
      final AccountRepository accountRepository = context.read();
      final hasInternet = await connectivityRepository.hasInternet;
      if (!hasInternet) {
        return Routes.offline;
      }
      final isSignedIn = await authenticationRepository.isSignedIn;
      if (!isSignedIn) {
        return Routes.signIn;
      }
      final user = await accountRepository.getUserData();
      return user == null ? Routes.signIn : Routes.home;
    }();
    if (mounted) {
      _goTo(routeName);
    }
  }

  void _goTo(String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:
            SizedBox(width: 80, height: 80, child: CircularProgressIndicator()),
      ),
    );
  }
}
