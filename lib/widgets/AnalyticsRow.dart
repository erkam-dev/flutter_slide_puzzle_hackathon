import 'package:flutter/material.dart';

class AnalyticsRow extends StatelessWidget {
  const AnalyticsRow({
    Key? key,
    required this.move,
    required this.secondsPassed,
  }) : super(key: key);

  final int move;
  final int secondsPassed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        // satır
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Yapılan Hamle: $move",
          ),
          Text(
            "Geçen zaman: ${secondsPassed}",
          ),
        ],
      ),
    );
  }
}
