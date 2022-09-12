import 'package:flutter/material.dart';
import 'package:flutter_rm/constants/colors.dart';

class InfoRow extends StatelessWidget {
  final String? title;
  final String data;

  const InfoRow({super.key, this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: title == null ? renderOneItem() : renderTwoItems(context),
    );
  }

  Widget renderOneItem() {
    return Row(
      children: [
        Flexible(
          child: Text(
            data,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget renderTwoItems(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text(
            title!,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: AppColors.infoRowTitle,
                  fontSize: 15,
                ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Text(
            data,
          ),
        ),
      ],
    );
  }
}
