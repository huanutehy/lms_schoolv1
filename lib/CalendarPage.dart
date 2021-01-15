import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:lms_schoolv1/HomePage.dart';
class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calendarPage(),
    );
  }
}
class calendarPage extends StatefulWidget {
  @override
  _calendarPageState createState() => _calendarPageState();
}

class _calendarPageState extends State<calendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      )
                    // onPressed: () => Navigator.of(context).pop(),
                  ),
                  Text(
                    "Lịch Học Tập",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Thứ 5, ngày 10 tháng 12 năm 2020",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.event,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      DatePicker.showDateTimePicker(context,
                          showTitleActions: true, onChanged: (date) {
                            print('change $date in time zone ' +
                                date.timeZoneOffset.inHours.toString());
                          }, onConfirm: (date) {
                            print('confirm $date');
                          }, currentTime: DateTime(2021, 12, 31, 23, 12, 34));
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  chage_calenda("7"),
                  chage_calenda("8"),
                  chage_calenda("9"),
                  chage_calenda("10"),
                  chage_calenda("11"),
                  chage_calenda("12"),
                  chage_calenda("13"),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        calenda_learing_hoa(
                          "event",
                          "09:00 Am",
                          "09:30 Am",
                          "Môn Hóa",
                          "H2 + O2 => HOHO ? Công thức \nhuyền thoại này đúng hay sai?",
                          "85%",
                          "Số liệu học:",
                          " 12",
                          "Hoàn Thành:",
                          "8",
                          "Khảo sát",
                          "Khảo sát ý kiến học sinh",
                          "Thời gian:",
                          "1h",
                          "Bài thi mở",
                        ),
                        calenda_learing_hoa(
                          "event",
                          "09:00 Am",
                          "09:30 Am",
                          "Môn Hóa",
                          "H2 + O2 => HOHO ? Công thức \nhuyền thoại này đúng hay sai?",
                          "85%",
                          "Số liệu học:",
                          " 12",
                          "Hoàn Thành:",
                          "8",
                          "Khảo sát",
                          "Khảo sát ý kiến học sinh",
                          "Thời gian:",
                          "1h",
                          "Bài thi mở",
                        ),
                        calenda_learing_hoa(
                          "event",
                          "09:00 Am",
                          "09:30 Am",
                          "Môn Hóa",
                          "H2 + O2 => HOHO ? Công thức \nhuyền thoại này đúng hay sai?",
                          "85%",
                          "Số liệu học:",
                          " 12",
                          "Hoàn Thành:",
                          "8",
                          "Khảo sát",
                          "Khảo sát ý kiến học sinh",
                          "Thời gian:",
                          "1h",
                          "Bài thi mở",
                        ),
                        calenda_learing_hoa(
                          "event",
                          "09:00 Am",
                          "09:30 Am",
                          "Môn Hóa",
                          "H2 + O2 => HOHO ? Công thức \nhuyền thoại này đúng hay sai?",
                          "85%",
                          "Số liệu học:",
                          " 12",
                          "Hoàn Thành:",
                          "8",
                          "Khảo sát",
                          "Khảo sát ý kiến học sinh",
                          "Thời gian:",
                          "1h",
                          "Bài thi mở",
                        ),
                        calenda_learing_hoa(
                          "event",
                          "09:00 Am",
                          "09:30 Am",
                          "Môn Hóa",
                          "H2 + O2 => HOHO ? Công thức \nhuyền thoại này đúng hay sai?",
                          "85%",
                          "Số liệu học:",
                          " 12",
                          "Hoàn Thành:",
                          "8",
                          "Khảo sát",
                          "Khảo sát ý kiến học sinh",
                          "Thời gian:",
                          "1h",
                          "Bài thi mở",
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container chage_calenda(String s) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      width: MediaQuery.of(context).size.width * 0.1,
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
          color: Color(0xFFFCE4EC), borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          "$s",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Container calenda_learing_hoa(
      String icon,
      String s,
      String t,
      String u,
      String v,
      String w,
      String x,
      String y,
      String param8,
      String param9,
      String Tieude,
      String content,
      String thoigian,
      String houst,
      String baithi) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 100,
                child: Center(child: Text("$s")),
              ),
              Container(
                height: 2,
                width: 620,
                color: Color(0x73000000),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 137,
                child: Center(
                  child: Text("$t"),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFFFEBEE)),
                height: 137,
                width: 300,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFEF9A9A)),
                        child: Icon(Icons.ac_unit),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          margin: EdgeInsets.only(left: 45),
                          child: Text(
                            "$u",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          )),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("$v",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500))),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text("$w",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.red))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("$x",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                            margin: EdgeInsets.only(left: 60),
                            child: Text("$y",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700)))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text("$param9",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w700))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text("$param8",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400)))),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only( left: 15),
                decoration: BoxDecoration(
                    color: Color(0xFFFCE4EC),
                    borderRadius: BorderRadius.circular(10)),
                width: 300,
                height: 137,
                child: Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFEF9A9A)),
                            child: Icon(Icons.ac_unit),
                          ),
                          Text(
                            "$Tieude",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      Text("$content",
                          style: TextStyle(fontWeight: FontWeight.w700)),
                      Expanded(child: Container()),
                      Row(
                        children: [
                          Text("$thoigian",
                              style: TextStyle(fontWeight: FontWeight.w700)),
                          Text("$houst"),
                          Expanded(child: Container()),
                          Container(
                            child: Text(
                              "$baithi",
                              textAlign: TextAlign.right,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
              //
            ],
          ),
        ],
      ),
    );
  }

}
