import 'package:flutter/material.dart';

import '../../model/watch.dart';
import 'info_row.dart';

class CardContent extends StatelessWidget {
  final Watch watch;
  const CardContent({super.key, required this.watch});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.withOpacity(0.1),
      child: Column(
        children: [
          InfoRow(
            data: watch.locationStr,
          ),
          const Divider(height: 1),
          InfoRow(
            title: "Price",
            data: watch.price,
          ),
          const Divider(height: 1),
          InfoRow(
            title: "Area",
            data: watch.area,
          ),
        ],
      ),
    );
  }
}
