import 'package:flutter/material.dart';

class SummeryQouestions extends StatelessWidget {
  const SummeryQouestions(this.summeryData, {super.key});

  final List<Map<String, Object>> summeryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summeryData.map((data) {
        return Row(
          children: [
            Text((data['questoin-index'] as int) +1),
          ],
        );
      }).toList()
    );
  }
}
