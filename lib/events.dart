import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  void SubmitForm() {}
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apply for Permission'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                // SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Event',
                    border: OutlineInputBorder(),
                  ),
                ),
                // SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Venue',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: () {
                    SubmitForm();
                  },
                  child: Text('Submit'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
