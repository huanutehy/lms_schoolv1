import 'package:flutter/material.dart';

import 'SigninPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: mainPage(),
      routes: {
        '/SigninPage': (context) => SigninPage(),
      },
    );
  }
}

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
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
                    image: AssetImage('asset/image/DN_exam_vnedu.png'))),
          ),
          // Text(
          //   'Sử dụng tài khoản vnEdu Connect để đăng nhập\n nếu như bạn đã có từ trước',
          //   style: TextStyle(
          //       fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
          //   textAlign: TextAlign.center,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sử dụng tài khoản ',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              Text(
                'vnEdu Connect',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue[900],
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              Text(
                ' để đăng nhập',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(
            'nếu như bạn đã có từ trước',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                ///Chuyen trang khi click vào sự kiện
                onTap: openSigninPage,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red[900]),
                  child: Text('Tiếp theo',
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

  void openSigninPage() {
    Navigator.pushNamed(context, '/SigninPage');
  }
}
