import 'package:flutter/material.dart';

import 'Signin.dart';

class SigninPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: signinPage(),
      routes: {
        '/Signin': (context) => Signin(),
      },
    );
  }
}

class signinPage extends StatefulWidget {
  @override
  _signinPageState createState() => _signinPageState();
}

class _signinPageState extends State<signinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 750,
            height: 750,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/image/DN_exam_normal.png'))),
          ),
          Column(

            children: [
              Text(
                'Hãy liên hệ với giáo viên phụ trách để được cấp',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              Row()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'tài khoản ',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red[600],
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              Text(
                'và ',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              Text(
                'mật khẩu',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red[600],
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
  void openSignin() {
    Navigator.pushNamed(context, '/Signin');
  }

}
