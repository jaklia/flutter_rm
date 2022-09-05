import 'package:flutter/material.dart';

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
      child: title == null ? renderOneItem() : renderTwoItems(),
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

  Widget renderTwoItems() {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text(title!),
        ),
        Expanded(
          flex: 6,
          child: Text(data),
        ),
      ],
    );
  }
}