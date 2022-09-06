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
          icon: const Icon(Icons.notifications),
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
