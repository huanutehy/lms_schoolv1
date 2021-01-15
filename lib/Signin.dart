import 'package:flutter/material.dart';
import 'DiaglogPage.dart';
import 'HomePage.dart';
import 'ResetPass.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: signin(),
      routes: {
        '/Reset': (context) => ResetPass(),
        // '/homepage': (context) => HomePage(),
        '/diaglogpage' : (context) => DialogChonTruong(),
      },
    );
  }
}

class signin extends StatefulWidget {
  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 280,
            height: 380,
            // margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/image/Asset.png'))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                ///Chuyen trang khi click vào sự kiện
                // onTap: openMainPage,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 0),
                  decoration: BoxDecoration(
                    border: new Border.all(color: Colors.blueAccent),

                    borderRadius: BorderRadius.circular(10),
                    //       color: Colors.black12,
                  ),
                  child: Row(
                    children: [
                      Text('Đăng nhập ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue[800],
                          ),
                          textAlign: TextAlign.center),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                AssetImage('asset/image/Frame_vnpt.png'))),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'hoặc sử dụng tài khoản được cấp',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 100, right: 100),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red[900]),
                ),
                prefixIcon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.red[900],
                ),
                hintText: 'example@gmail.com',
                hintStyle: TextStyle(
                  color: Colors.red[900],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 100, right: 100),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red[900]),
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.red[900],
                ),
                suffixIcon: Icon(
                  Icons.keyboard_rounded,
                  color: Colors.red[900],
                ),
                hintText: 'Mật khẩu',
                hintStyle: TextStyle(
                  color: Colors.red[900],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                ///Chuyen trang khi click vào sự kiện
                // onTap: openDialog,
                onTap: _showMyDialog,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 114, vertical: 25),
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red[900]),
                  child: Text('Đăng nhập',
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
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                ///Chuyen trang khi click vào sự kiện
                onTap: openreset,
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text('Quên mật khẩu tài khoản được cấp ?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.red[900],
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

  void openreset() {
    Navigator.pushNamed(context, '/Reset');
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          title: Row(
            children: [
              Text(
                "Chọn trường học",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Expanded(
                child: Container(),
              ),
              IconButton(
                  icon: Icon(Icons.close, color: Colors.black),
                  onPressed: () {
                    Navigator.of(context).pop();
                  })
            ],
          ),
          content: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
              child: Column(
                children: [
                  timeSlotWidget(
                      "THCS Trần Thanh Quang", "taphuanttq.vnedu.vn"),
                  timeSlotWidget(
                      "THCS Trần Thanh Quang", "taphuanttq.vnedu.vn"),
                  timeSlotWidget(
                      "THCS Trần Thanh Quang", "taphuanttq.vnedu.vn"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Column timeSlotWidget(String truong, String web) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        InkWell(
          child: Container(
            height: 65,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xFFB9F6CA),
            ),
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        "$truong",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "$web",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.red),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  void openHome() {
    Navigator.pushNamed(context, '/homepage');
  }
  void openDialog() {
    Navigator.pushNamed(context, '/diaglogpage');
  }
}
