import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const  About ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
        title: const Text("About Mee"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 119, 76, 175),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.thumb_up),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.thumb_down),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
        children: <Widget>[
            ClipOval(
              child: Image.asset('images/image.jpeg',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
              ),    
            ),  
            ListTile(
              title: Center(child: Text("I Ketut Adi Wiratama")),
              subtitle: Center(child: Text("adiwiratama.2@undiksha.ac.id")),
            ), 
          ],
        ),
      ), 
    );
  }
}