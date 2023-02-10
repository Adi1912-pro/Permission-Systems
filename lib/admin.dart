import 'package:flutter/material.dart';

class admin extends StatefulWidget {
  const admin({super.key});

  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Venue Requests',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 110.0),
    );
  }
}
