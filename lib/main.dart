import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.sort),
          title: Text('Picture Gallery'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: (){},
            )
          ],

        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //crossAxisCount: The number of children in the cross axis.
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              //specify the list of children for the grid
              children: <Widget>[
                _buildContainer(),
                _buildContainer(),
                _buildContainer(),
                _buildContainer(),
                _buildContainer(),
                _buildContainer(),
                _buildContainer(),
                _buildContainer(),
                _buildContainer(),
                _buildContainer(),
                _buildContainer(),
                _buildContainer(),
              ],
              //specify direction in which it scrolls (horizontal or vertical).
              //scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('Business'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('School'),
            ),
          ],
          selectedItemColor: Colors.amber[800],
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
  Widget _buildContainer() {
    return Container(
      height: 50.0,
      width: 60.0,
      //color: Colors.red,
      //child: Image.asset('images/1.jpg'),
      child: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset('images/2.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: new FlatButton(
                padding: EdgeInsets.all(0.0),
                onPressed: () {

                },
                child: null
            ),
          ),
        ],
      ),
    );
  }
}

