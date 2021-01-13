import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: MyHomePage(),
      routes: {
        // '/MainPage': (context) => MainPage(),
      },
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 280,
            height: 380,
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/image/Frame.png'))),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'XIN CHÀO !',
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Giúp bạn phát triển sự nghiệp và hoàn thiện kiến thức \ncủa bản thân với hàng ngàn khóa học Online.\nHọc mọi lúc, mọi nơi',

            style: TextStyle(

                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 160,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                ///Chuyen trang khi click vào sự kiện
                onTap: openMainPage,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red[900]),
                  child: Text('Bắt đầu',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center),
                ),
              )
            ],
          ),

          Expanded(child: Container()),

          Text(
            'Liên hệ giáo viên phụ trách để được cấp \ntài khoản đăng nhập',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w400, ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 60,
          ),

        ],
      ),

    );
  }
  void openMainPage() {
    Navigator.pushNamed(context, '/MainPage');
  }
}
