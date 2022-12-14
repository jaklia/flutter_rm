import 'package:flutter/material.dart';
import 'package:flutter_rm/constants/colors.dart';

import '../../constants/strings.dart';
import '../../model/watch.dart';

class CardHeader extends StatelessWidget {
  final Watch watch;
  const CardHeader({super.key, required this.watch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    watch.name,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.w700),
                    maxLines: 1,
                  ),
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
            flex: 2,
            child: Text(
              watch.isNotificationEnabled
                  ? Strings.notificationText
                  : Strings.notificationsMuted,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: AppColors.cardNotificationText),
            ),
          )
        ],
      ),
    );
  }
}
