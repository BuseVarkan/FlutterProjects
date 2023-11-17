import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/pp.png'),
            ),
            Text(
              'Buse Varkan',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'SOFTWARE DEVELOPER',
              style: TextStyle(
                color: Colors.teal[100],
                fontSize: 15,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                fontFamily: 'SourceSans3',
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+90 507 163 2815',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'SourceSans30',
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'busevarkan71@gmail.com',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'SourceSans30',
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
