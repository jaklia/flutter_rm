import 'package:flutter/material.dart';

import '../../model/watch.dart';

class CardFooter extends StatelessWidget {
  final Watch watch;
  const CardFooter({super.key, required this.watch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // this should be in a separate widget,
          //  now need to set the same stuff 3 times
          IconButton(
            iconSize: 36,
            onPressed: () {},
            icon: const Icon(Icons.delete_rounded),
          ),
          IconButton(
            iconSize: 36,
            onPressed: () {},
            icon: Icon(watch.isNotificationEnabled
                ? Icons.notifications_rounded
                : Icons.notifications_off_rounded),
          ),
          IconButton(
            iconSize: 36,
            onPressed: () {},
            icon: const Icon(Icons.edit_rounded),
          ),
        ],
      ),
    );
  }
}
