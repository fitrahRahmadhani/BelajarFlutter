import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://cdn2.momjunction.com/wp-content/uploads/2021/02/What-Is-A-Sigma-Male-And-Their-Common-Personality-Trait-624x702.jpg'),
            ),
            Text(
              'Fitrah R.A.',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Ametour Flutter Developer'.toUpperCase(),
              style: TextStyle(
                fontFamily: "Source Code Pro",
                fontSize: 14,
                color: Colors.white,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 150,
              height: 20,
              child: Divider(
                color: Colors.teal[200],
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+6282232648999',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                leading: Icon(
                  Icons.email_rounded,
                  color: Colors.teal,
                ),
                title: Text(
                  'fitrah@outlook.com',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20,
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
