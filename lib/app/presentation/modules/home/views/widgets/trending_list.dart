import 'package:flutter/material.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Center(
        child: FutureBuilder(
          future: Future.delayed(
            Duration(seconds: 2),
            () {
              return 100;
            },
          ),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            return Text(snapshot.data?.toString() ?? '');
          },
        ),
      ),
    );
  }
}
