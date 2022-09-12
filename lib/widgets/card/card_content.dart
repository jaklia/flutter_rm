import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';
import '../../model/watch.dart';
import 'info_row.dart';

class CardContent extends StatelessWidget {
  final Watch watch;
  const CardContent({super.key, required this.watch});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      color: AppColors.cardContentBg,
      child: Column(
        children: [
          InfoRow(
            data: watch.locationStr,
          ),
          const Divider(height: 1, thickness: 1),
          InfoRow(
            title: Strings.price,
            data: watch.price,
          ),
          const Divider(height: 1, thickness: 1),
          InfoRow(
            title: Strings.floorArea,
            data: watch.area,
          ),
        ],
      ),
    );
  }
}
