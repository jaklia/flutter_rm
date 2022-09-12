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
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            CardHeader(watch: watch),
            CardContent(watch: watch),
            CardFooter(watch: watch),
          ],
        ),
      ),
    );
  }
}
