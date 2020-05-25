import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SquarePro Labs'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 50.0),
            alignment: Alignment.topCenter,
            child: CircularProgressIndicator(
              semanticsLabel: 'Loading',
              backgroundColor: Colors.red,
            ),
          ),
          CircleAvatar(
//            backgroundImage: AssetImage('images/1.jpg'),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 50.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('Developed By '),
                      Text(
                        'SquarePro Labs',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            letterSpacing: 2.0),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  Row(
                    children: <Widget>[
                      Text('Co Founder : '),
                      Text(
                        ' Chathura Vithanage',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
//                            letterSpacing: 2.0
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
