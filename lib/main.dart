// import 'dart:html';

import 'package:first_app/admin.dart';
import 'package:first_app/admin_event.dart';
import 'package:first_app/details.dart';
import 'package:first_app/home1.dart';
import 'package:flutter/material.dart';
import 'package:first_app/events.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Permission System'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currIndex = 0;
  bool _click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Column(
        children: [
          currIndex == 0 ? home_first() : admin(),
          currIndex == 0
              ? ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context1) {
                      return Details();
                    }));
                  },
                  child: Text('Event 1'))
              : ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context1) {
                      return admin_details();
                    }));
                  },
                  child: Text('Event 1')),
          currIndex == 0
              ? ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context1) {
                      return Details();
                    }));
                  },
                  child: Text('Event 2'))
              : ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context1) {
                      return admin_details();
                    }));
                  },
                  child: Text('Event 2')),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
              label: 'Admin', icon: Icon(Icons.admin_panel_settings))
        ],
        currentIndex: currIndex,
        onTap: (int index) {
          setState(() {
            currIndex = index;
          });
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context1) {
            return Events();
          }));
        },
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
