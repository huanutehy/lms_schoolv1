import 'package:flutter/material.dart';
import 'package:lms_schoolv1/KTPass.dart';

import 'Updatefn.dart';
class UpdatePass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: updatePass(),
      routes: {
        '/Capnhat': (context) => Updatefn(),
      },
    );
  }
}
class updatePass extends StatefulWidget {
  @override
  _updatePassState createState() => _updatePassState();
}

class _updatePassState extends State<updatePass> {
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
                    MaterialPageRoute(builder: (context) => KTPass()),
                  )
                // onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),          Text(
            'Cập nhật mật khẩu',
            style: TextStyle(

                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Mật khẩu mới của bạn cần khác so với mật khẩu \ncũ.',
            style: TextStyle(

                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 50,),
          Container(
            padding: EdgeInsets.only(left: 100, right: 100),
            child: TextField(

              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  // borderSide: BorderSide(color: Colors.red[900]),
                ),
                prefixIcon: Icon(Icons.work_outline, ),
                suffixIcon: Icon(Icons.keyboard_rounded, ),

                hintText: 'Mật khẩu mới',
                hintStyle: TextStyle(
                  // color: Colors.red[900],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.only(left: 100, right: 100),
            child: TextField(

              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red[900]),
                ),
                prefixIcon: Icon(Icons.work_outline, ),
                suffixIcon: Icon(Icons.keyboard_rounded, ),

                hintText: 'Nhập lại mật khẩu',
                hintStyle: TextStyle(
                ),
              ),
            ),
          ),

          SizedBox(height: 10,),
          Row(

            children: [
              Container(
                margin: EdgeInsets.only(left: 100),

                child: Text('Mật khẩu phải trùng khớp',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center),
              ),

            ],
          ),
          SizedBox(height: 50,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                ///Chuyen trang khi click vào sự kiện
                onTap: openupdateThanhcong,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red[900]),
                  child: Text('Cập nhật',
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
        ],
      ),
    );
  }
  void openupdateThanhcong() {
    Navigator.pushNamed(context, '/Capnhat');
  }
}

