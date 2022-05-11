import 'package:flutter/material.dart';
import 'hitung.dart';

class MenuPage extends StatelessWidget {
  final appTitle = 'HOME';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('Luas dan Volume'),
      ),
      body: Container( 
        margin: EdgeInsets.only(top:60),
        child: Column(
          children: [
            Text("Menu",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height:40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new GestureDetector(
                      child: Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.yellow,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      ),
                      child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(          
                          children: <Widget>[
                          Icon(Icons.auto_stories_sharp,
                          size: 80,
                          ),
                          Text('Luas dan Volume')
                          ],
                      ),
                        ),
                    ),
                    onTap: () {
                      Route route = MaterialPageRoute(builder: (context) => HitungApp());
                      Navigator.push(context, route);
                    },
                ),
                new GestureDetector(
                      child: Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      ),
                      child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(          
                          children: <Widget>[
                          Icon(Icons.games_outlined,
                          size: 80,
                          ),
                          Text('Game')
                          ],
                      ),
                        ),
                    ),
    
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}