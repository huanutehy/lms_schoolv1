import 'package:flutter/material.dart';

import 'ResetPass.dart';
import 'UpdatePass.dart';

class KTPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: ktrapass(),
      routes: {
        '/updatepass': (context) => UpdatePass(),
      },
    );
  }
}

class ktrapass extends StatefulWidget {
  @override
  _ktrapassState createState() => _ktrapassState();
}

class _ktrapassState extends State<ktrapass> {
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
                    MaterialPageRoute(builder: (context) => ResetPass()),
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
                    image: AssetImage('asset/image/Groupemail.png'))),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Kiểm tra hòm thư\ncủa bạn',
            style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Chúng tôi đã gửi hướng dẫn thay đổi mật khẩu \nvào email của bạn.',

            style: TextStyle(

                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                ///Chuyen trang khi click vào sự kiện
                onTap: openUpdatePass,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red[900]),
                  child: Text('Gửi lại',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                ///Chuyen trang khi click vào sự kiện
                //  onTap: openreset,
                child: Container(
                  margin: EdgeInsets.only(right: 20),

                  child: Text('         Thử lại sau',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center),
                ),
              )
            ],
          ),
          Expanded(child: Container()),
          Column(

            children: [
              Text(
                'Không nhận được email? Kiểm tra hòm thư spam ',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'của bạn hoặc ',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              Text(
                'thử lại với email khác',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red[600],
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),

            ],
          ),
          SizedBox(height: 50,),

        ],
      ),
    );
  }
  void openUpdatePass() {
    Navigator.pushNamed(context, '/updatepass');
  }
}
