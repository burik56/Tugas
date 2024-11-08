import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white, //for universal colors
      ),
      drawer: buildGroupDrawer(context),
      body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.5,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(10, (index) {
            return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 5.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blue[200],
                  ),
                  child: Text(
                    'Materi $index',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ));
          })),
    );
  }

  Drawer buildGroupDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[900],
            ),
            child: const Text(
              'aden septian',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
          ExpansionTile(
            title: const Text('Materi'),
            children: <Widget>[
              ListTile(
                title: const Text('Materi 1'),
                onTap: () {
                  Navigator.pop(context); // Close drawer when tapped
                },
              ),
              ListTile(
                title: const Text('Materi 2'),
                onTap: () {
                  Navigator.pop(context); // Close drawer when tapped
                },
              ),
              ListTile(
                title: const Text('Materi 3'),
                onTap: () {
                  Navigator.pop(context); // Close drawer when tapped
                },
              ),
              ListTile(
                title: const Text('Materi 4'),
                onTap: () {
                  Navigator.pop(context); // Close drawer when tapped
                },
              ),
              ListTile(
                title: const Text('Materi 5'),
                onTap: () {
                  Navigator.pop(context); // Close drawer when tapped
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}