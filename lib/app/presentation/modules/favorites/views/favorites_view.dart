import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../global/controllers/favorites/favorites_controller.dart';
import '../../../global/widgets/request_failed.dart';
import 'widgets/favoritesContent.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    final FavoritesController controller = context.watch();
    return Scaffold(
      appBar: AppBar(),
      body: controller.state.map(
        loading: (_) => Center(
          child: CircularProgressIndicator(),
        ),
        failed: (_) => RequestFail(onRetry: () => controller.init()),
        loaded: (state) => FavoritesContent(state: state),
      ),
    );
  }
}
