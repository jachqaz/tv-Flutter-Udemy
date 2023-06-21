import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../domain/models/performer/performer.dart';
import '../../../../../global/utils/get_image_url.dart';

class PerformerTile extends StatelessWidget {
  final Performer performer;

  const PerformerTile({super.key, required this.performer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Positioned.fill(
              child: ExtendedImage.network(
                getImageUrl(performer.profilePath,
                    imageQuality: ImageQuality.original),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black],
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      performer.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
