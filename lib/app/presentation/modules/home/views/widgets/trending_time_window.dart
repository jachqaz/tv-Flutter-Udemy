import 'package:flutter/material.dart';

import '../../../../../domain/enums.dart';

class TrendingTimeWindow extends StatelessWidget {
  final TimeWindow timeWindow;
  final void Function(TimeWindow) onChanged;

  const TrendingTimeWindow(
      {super.key, required this.timeWindow, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Text(
            'TRENDING',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Material(
              color: Color(0Xfff0f0f0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: DropdownButton<TimeWindow>(
                    value: timeWindow,
                    isDense: true,
                    underline: SizedBox(),
                    items: [
                      DropdownMenuItem(
                        child: Text('Last 24h'),
                        value: TimeWindow.day,
                      ),
                      DropdownMenuItem(
                        child: Text('Last week'),
                        value: TimeWindow.week,
                      ),
                    ],
                    onChanged: (mtimeWindow) {
                      if (mtimeWindow != null && mtimeWindow != timeWindow) {
                        onChanged(mtimeWindow);
                      }
                    }),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
