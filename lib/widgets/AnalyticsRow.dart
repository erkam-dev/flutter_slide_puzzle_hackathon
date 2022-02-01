import 'package:flutter/material.dart';

class AnalyticsRow extends StatelessWidget {
  const AnalyticsRow({
    Key? key,
    required this.hareket,
  }) : super(key: key);

  final int hareket;

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
            "Yapılan Hamle: $hareket",
            style: TextStyle(fontSize: 24),
          ),
          Text(
            "Geçen zaman: ",
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
