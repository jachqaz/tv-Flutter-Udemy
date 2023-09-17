import 'package:flutter/material.dart';

import '../../../generated/assets.gen.dart';

class RequestFail extends StatelessWidget {
  final VoidCallback onRetry;
  final String? text;

  const RequestFail({super.key, required this.onRetry, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Assets.svgs.error404.svg()),
          Text(text ?? 'Request Failed'),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: onRetry,
            color: Colors.blue,
            child: const Text('Retry'),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
