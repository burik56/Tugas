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
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white, // universal color setting
      ),
      drawer: buildGroupDrawer(context),
      body: Center(
        child: Text('Pemrograman mobile $title'),
      ),
      // Uncomment the below section to use GridView instead of Center widget
      // body: GridView.count(
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 10.5,
      //   mainAxisSpacing: 10.0,
      //   shrinkWrap: true,
      //   children: List.generate(10, (index) {
      //     return Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Container(
      //         height: 5.0,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20.0),
      //           color: Colors.blue[200],
      //         ),
      //         child: Text(
      //           'Materi $index',
      //           textAlign: TextAlign.center,
      //           style: const TextStyle(
      //             color: Colors.black,
      //             fontSize: 20.0,
      //           ),
      //         ),
      //       ),
      //     );
      //   }),
      // ),
    );
  }

  Drawer buildGroupDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blue[900]),
            accountName: const Text(
              'Aden Septian Sasmito',
              style: TextStyle(fontSize: 10.0),
            ),
            accountEmail: const Text('adenseptian52@gmail.com'),
            currentAccountPictureSize: const Size.square(40),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                'A',
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
            ),
          ),
          // Uncomment the below section for expandable list of materials
          // ExpansionTile(
          //   title: const Text('Materi'),
          //   children: <Widget>[
          //     for (var i = 1; i <= 5; i++)
          //       ListTile(
          //         title: Text('Materi $i'),
          //         onTap: () {
          //           Navigator.pop(context); // Close drawer when tapped
          //         },
          //       ),
          //   ],
          // ),
          ListTile(leading: Icon(Icons.person),
          title: Text('aden'),
          subtitle: Text('XI RPL 2'),
          trailing: Icon(Icons.chevron_right_rounded),
          )
        ],
      ),
    );
  }
}
