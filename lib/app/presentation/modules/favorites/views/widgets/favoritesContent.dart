import 'package:flutter/material.dart';

import '../../../../global/controllers/favorites/favorites_state.dart';

class FavoritesContent extends StatelessWidget {
  final FavoritesStateLoaded state;
  final TabController tabController;

  const FavoritesContent(
      {super.key, required this.state, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      children: [
        Text('movies'),
        Text('series'),
      ],
    );
  }
}
