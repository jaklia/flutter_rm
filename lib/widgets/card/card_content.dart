import 'package:flutter/material.dart';

import 'info_row.dart';

class CardContent extends StatelessWidget {
  const CardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.withOpacity(0.1),
      child: Column(
        children: const [
          InfoRow(
            data:
                "location, location, location, location, location, location, location",
          ),
          Divider(height: 1),
          InfoRow(
            title: "price",
            data: "asd asd",
          ),
          Divider(height: 1),
          InfoRow(
            title: "area",
            data: "asd asd",
          ),
        ],
      ),
    );
  }
}
