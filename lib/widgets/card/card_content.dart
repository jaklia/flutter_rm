import 'package:flutter/material.dart';
import 'package:flutter_rm/constants/colors.dart';

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
            title: "Price",
            data: watch.price,
          ),
          const Divider(height: 1, thickness: 1),
          InfoRow(
            title: "Floor area",
            data: watch.area,
          ),
        ],
      ),
    );
  }
}
