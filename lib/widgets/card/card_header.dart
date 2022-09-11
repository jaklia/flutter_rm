import 'package:flutter/material.dart';

import '../../model/watch.dart';

class CardHeader extends StatelessWidget {
  final Watch watch;
  const CardHeader({super.key, required this.watch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  watch.name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(height: 4),
                Text(
                  '${watch.estateTypeStr} ${watch.assignmentTypeStr}',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              watch.isNotificationEnabled
                  ? 'lorem ipsum dolor sit amet'
                  : 'Notifications are muted',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: Colors.orange),
            ),
          )
        ],
      ),
    );
  }
}
