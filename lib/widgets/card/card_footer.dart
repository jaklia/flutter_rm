import 'package:flutter/material.dart';

import '../../model/watch.dart';

class CardFooter extends StatelessWidget {
  final Watch watch;
  const CardFooter({super.key, required this.watch});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // this should be in a separate widget,
        //  now need to set the same stuff 3 times
        IconButton(
          padding: const EdgeInsets.all(0),
          iconSize: 36,
          onPressed: () {},
          icon: const Icon(Icons.delete_rounded),
        ),
        IconButton(
          padding: const EdgeInsets.all(0),
          iconSize: 36,
          onPressed: () {},
          icon: Icon(watch.isNotificationEnabled
              ? Icons.notifications
              : Icons.notifications_off_rounded),
        ),
        IconButton(
          padding: const EdgeInsets.all(0),
          iconSize: 36,
          onPressed: () {},
          icon: const Icon(Icons.edit_rounded),
        ),
      ],
    );
  }
}
