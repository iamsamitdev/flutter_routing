import 'package:flutter/material.dart';
import 'package:flutter_routing/about.dart';
import 'package:flutter_routing/contact.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => About(),
                    settings: RouteSettings(
                      arguments: 'ข้อความตัวอย่างจากหน้า home',
                    ),
                  )
                );
              },
              child: Text('Go about with push'),
              color: Colors.teal,
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: (){
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (context) => Contact())
                );
              },
              child: Text('Go contact wih replacement'),
              color: Colors.orange,
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: (){
               Navigator.pushNamed(context, '/setting');
              },
              child: Text('Go setting with pushName'),
              color: Colors.purple,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}