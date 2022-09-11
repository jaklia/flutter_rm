import 'package:flutter/material.dart';

import '../../model/watch.dart';
import 'card_content.dart';
import 'card_footer.dart';
import 'card_header.dart';

class WatchCard extends StatelessWidget {
  final Watch watch;
  const WatchCard({super.key, required this.watch});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Theme.of(context).dividerColor),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
          bottom: 8,
        ),
        child: Column(
          children: [
            CardHeader(watch: watch),
            const SizedBox(height: 16),
            CardContent(watch: watch),
            const SizedBox(height: 10),
            CardFooter(watch: watch),
          ],
        ),
      ),
    );
  }
}
