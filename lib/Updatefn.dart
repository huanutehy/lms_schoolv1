import 'package:flutter/material.dart';
import 'package:lms_schoolv1/UpdatePass.dart';

import 'Signin.dart';
class Updatefn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: updatefn(),
      routes: {
        '/signin': (context) => Signin(),
      },
    );
  }
}
class updatefn extends StatefulWidget {
  @override
  _updatefnState createState() => _updatefnState();
}

class _updatefnState extends State<updatefn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpdatePass()),
                  )
                // onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            width: 180,
            height: 280,
            margin: EdgeInsets.only(top: 150),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/image/Grouppass.png'))),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Cập nhật mật khẩu\n thành công',
            style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                ///Chuyen trang khi click vào sự kiện
                onTap: openSignin,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red[900]),
                  child: Text('Đăng nhập',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center),
                ),
              )
            ],
          ),
          SizedBox(height: 50,),
        ],
      ),
    );
  }
  void openSignin() {
    Navigator.pushNamed(context, '/signin');
  }
}
