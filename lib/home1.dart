import 'package:flutter/material.dart';

class home_first extends StatelessWidget {
  const home_first({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Your Events',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 130.0),
    );
  }
}
