import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [

          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 60),
                child:
                Text('Xin chào',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      //chinh anh
                      radius: 30,
                      backgroundImage: AssetImage('asset/image/Frame.png'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
