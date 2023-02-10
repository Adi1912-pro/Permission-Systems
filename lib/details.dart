import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(height: 20.0),
                Text(
                  'Event Name:'
                  '\n'
                  'Date:'
                  '\n'
                  'Time:'
                  '\n'
                  'Venue:'
                  '\n'
                  'Aprroved:',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(height: 20.0),
                // SizedBox(height: 20.0),
                // SizedBox(height: 12.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
