import 'package:flutter/material.dart';

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
          Text(text ?? 'Request Failed'),
          MaterialButton(
            onPressed: onRetry,
            child: Text('Retry'),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
