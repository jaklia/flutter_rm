import 'package:flutter/material.dart';
import 'package:flutter_rm/widgets/card/card_footer.dart';

import 'card_content.dart';
import 'card_header.dart';

class WatchCard extends StatelessWidget {
  const WatchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            CardHeader(),
            SizedBox(height: 16),
            CardContent(),
            CardFooter(),
          ],
        ),
      ),
    );
  }
}
