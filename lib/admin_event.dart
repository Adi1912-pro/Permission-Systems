import 'package:flutter/material.dart';

class admin_details extends StatefulWidget {
  const admin_details({super.key});

  @override
  State<admin_details> createState() => _admin_detailsState();
}

class _admin_detailsState extends State<admin_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event'),
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
                  'Venue:',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(height: 20.0),
                SizedBox(height: 20.0),
                SizedBox(height: 12.0),
                ElevatedButton(onPressed: () {}, child: Text('Approve')),
                ElevatedButton(onPressed: () {}, child: Text('Decline')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
