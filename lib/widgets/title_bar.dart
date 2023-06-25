import 'package:flutter/material.dart';

class TitleBar extends StatefulWidget {
  const TitleBar({super.key});

  @override
  State<TitleBar> createState() => _TitleBarState();
}

class _TitleBarState extends State<TitleBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Upcoming Consultations',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.arrow_right_alt)
        ],
      ),
    );
  }
}
