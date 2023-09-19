import 'package:flutter/material.dart';

import '../../../../global/controllers/favorites/favorites_state.dart';

class FavoritesContent extends StatefulWidget {
  final FavoritesStateLoaded state;

  const FavoritesContent({super.key, required this.state});

  @override
  State<FavoritesContent> createState() => _FavoritesContentState();
}

class _FavoritesContentState extends State<FavoritesContent>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: [
        Text('movies'),
        Text('series'),
      ],
    );
  }
}
