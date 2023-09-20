import 'package:flutter/material.dart';

Future<T> showLoader<T>(BuildContext context, Future future) async {
  final overlayState = Overlay.of(context);
  final entry = OverlayEntry(
      builder: (_) => Container(
            color: Colors.black45,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ));
  overlayState.insert(entry);
  final result = await future;
  entry.remove();
  return result;
}
