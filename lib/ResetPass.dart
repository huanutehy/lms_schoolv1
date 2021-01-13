import 'package:flutter/material.dart';

import 'KTPass.dart';

class ResetPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: resetPass(),
      routes: {
        '/Kiemtra': (context) => KTPass(),
      },
    );
  }
}

class resetPass extends StatefulWidget {
  @override
  _resetPassState createState() => _resetPassState();
}

class _resetPassState extends State<resetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Khôi phục mật khẩu',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,

            ),

          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Vui lòng nhập email của bạn để tiến hành khôi phục\nmật khẩu: ',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),

          ),
          SizedBox(height: 50,),
          Container(
            padding: EdgeInsets.only(left: 90, right: 90),
            child: TextField(

              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red[900]),
                ),
                prefixIcon: Icon(Icons.account_circle_outlined, color: Colors.red[900],),
                hintText: 'example@gmail.com',
                hintStyle: TextStyle(
                  color: Colors.red[900],
                ),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                ///Chuyen trang khi click vào sự kiện
                onTap: openKiemtra,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 114, vertical: 25),
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red[900]),
                  child: Text('Gửi Email',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
  void openKiemtra() {
    Navigator.pushNamed(context, '/Kiemtra');
  }
}
