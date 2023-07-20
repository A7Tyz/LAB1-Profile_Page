import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 238, 148, 148),
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: Icon(
                Icons.search,
                size: 40,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            )
          ],
          leading: Icon(
            Icons.menu,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 40,
          ),
          backgroundColor: Color.fromARGB(255, 255, 0, 0),
          title: const Text('My Profile UI'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color.fromARGB(255, 248, 45, 45),
                    width: 4.0,
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://media.tenor.com/c3hLs3HVKMAAAAAC/bocchi-the-rock-kita-ikuyo.gif',
                  ),
                ),
              ),

              const Divider(
                height: 60.0,
                color: Color.fromARGB(137, 0, 0, 0),
              ),  
              
              SizedBox(height: 20),
              Text(
                'Name',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold, color : Color.fromARGB(255, 255, 59, 59),
                  fontFamily: "Raleway"
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Watcharapong Nacharoen',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Raleway"
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Position',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold, color : Color.fromARGB(255, 255, 59, 59),
                  fontFamily: "Raleway"
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Guitar and vocals.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Raleway"
                ),
              ),
              SizedBox(height: 16),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('a7tyz@gmail.com'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}