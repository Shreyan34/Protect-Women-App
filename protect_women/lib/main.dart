import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //the appbar
        title: Text('HomePage'), //title of the appbar
        centerTitle: true, //centers the title
        backgroundColor:
            Colors.pink[300], //puts a color to the background of the appbar
        elevation: 0.0, //clears the elevation of the App Bar
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(), //makes a symmetric padding
        child: Column(
          //a column for the page
          mainAxisAlignment: MainAxisAlignment.center, //centers our column
          children: [
            TextField(
              //takes the input of the name of the user
              decoration: InputDecoration(
                labelText: 'Your Name',
              ),
            ),
            SizedBox(
              width: 30.0,
              height: 40.0,
            ),
            TextField(
              //takes the input of the phone number of the user's guardian
              decoration: InputDecoration(labelText: 'Guardian Phone Number'),
            ),
            SizedBox(
              width: 30.0,
              height: 40.0,
            ),
            TextField(
              //takes the input of the email ID of the user's guardian
              decoration: InputDecoration(labelText: 'Guardian Email ID'),
            ),
            SizedBox(
              width: 30.0,
              height: 40.0,
            ),
            FloatingActionButton(
              //used for navigation to the next page
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LocationPage()),
                );
              },
              child: Text('Submit'),
              backgroundColor: Colors.pink[400],
            ),
          ],
        ),
      ),
    );
  }
}

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Location'),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                //location container
                ),
            SizedBox(
              //adding an invisible box in order to make some distance between the container and the floating action button
              width: 300.0,
              height: 380.0,
            ),
            FloatingActionButton(
              //the 'Alert!' flating actuon button
              onPressed: () {},
              child: Text(
                'Alert!',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.red,
            )
          ], //Children
        ),
      ),
    );
  }
}
