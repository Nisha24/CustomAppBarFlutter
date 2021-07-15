import 'package:flutter/material.dart';
import 'package:appbar_items/screens/bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text("Foody"),
          actions: <Widget>[
            IconButton(
              onPressed: () => debugPrint('item search'),
              icon: Icon(Icons.search),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('Foody'),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
              ),
              ListTile(
                title: Text('Profile'),
                selectedTileColor: Colors.blue,
                contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                onTap: () => debugPrint("My Profile"),
              ),
              ListTile(
                title: Text('Settings'),
                contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                onTap: () => debugPrint("Settings"),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottomNavigationBar: BottomNavigationBar(
        //   backgroundColor: Colors.amberAccent,
        //   items: [
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.home), title: Text('Home')),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.shopping_cart), title: Text('Cart')),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.settings), title: Text('Settings')),
        //   ],
        // ),
        body: Container(
          padding: EdgeInsets.all(30),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hi Foodies',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your username'),
              ),

              InkWell(
                child: RaisedButton(
                  onPressed: () => debugPrint('Your food is here'),
                  child: Text('Order'),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint('clicked'),
          child: Icon(Icons.search),
          backgroundColor: Colors.amberAccent,
        ),
      ),
    );
  }
}
