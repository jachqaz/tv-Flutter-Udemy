import 'package:flutter/material.dart';

import 'widgets/movies_and_series/trending_list.dart';
import 'widgets/performers/trending_performers.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (_, constraints) => RefreshIndicator(
            onRefresh: () async {},
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: SizedBox(
                height: constraints.maxHeight,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    TrendingList(),
                    SizedBox(
                      height: 10,
                    ),
                    TrendingPerformers(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
