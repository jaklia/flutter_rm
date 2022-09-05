import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Title",
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                "subtitle",
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 1,
          child: Text(
            "lorem ipsum dolor sit amet",
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
