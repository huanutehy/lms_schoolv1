import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'CalendarPage.dart';

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
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: buildCustomBottomNavigationBar(),
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            UserView(),
            SliderPicture(),
            LineView(),
            Gridview(),
            LineView(),
            WidgetTenMuc(
              width: width,
              TenMuc: 'Đang Học',
              textBt: '',
            ),
            SliderDangHoc(width: width, height: height),
            WidgetTenMuc(
              width: width,
              TenMuc: 'Khóa học mới nhất',
              textBt: 'Tất cả',
            ),
            SliderKHM(),
            WidgetTenMuc(
              width: width,
              TenMuc: 'Bảng tin',
              textBt: '',
            ),
            WidgetBangTin(width: width),
          ],
        ),
      ),
    );
  }

  CustomBottomNavigationBar buildCustomBottomNavigationBar() {
    return CustomBottomNavigationBar(
      iconList: [
        Icons.home_outlined,
        Icons.cast_for_education,
        Icons.lightbulb_outline,
        Icons.account_circle_outlined,
      ],
      onChange: (val) {
        setState(() {
          _selectedItem = val;
        });
      },
      defaultSelectedIndex: 1,
    );
  }
}

class WidgetBangTin extends StatelessWidget {
  const WidgetBangTin({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemNoiDungBT(
          width: width,
          ngaythang: '24/11',
          nam: '2020',
          tieude: 'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
        ),
        ItemNoiDungBT(
          width: width,
          ngaythang: '24/11',
          nam: '2020',
          tieude: 'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
        ),
        ItemNoiDungBT(
          width: width,
          ngaythang: '24/11',
          nam: '2020',
          tieude: 'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
        ),
        ItemNoiDungBT(
          width: width,
          ngaythang: '24/11',
          nam: '2020',
          tieude: 'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
        ),
      ],
    );
  }
}

class ItemNoiDungBT extends StatelessWidget {
  const ItemNoiDungBT({
    Key key,
    @required this.width,
    @required this.ngaythang,
    @required this.nam,
    @required this.tieude,
  }) : super(key: key);

  final double width;
  final String ngaythang, nam, tieude;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 90,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xFFFFE4E0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 78,
            width: width * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color(0xFFE04A4F),
            ),
            margin: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ngaythang,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                Text(nam, style: TextStyle(fontSize: 14, color: Colors.white))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            width: width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  tieude,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SliderKHM extends StatelessWidget {
  const SliderKHM({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 219,
      width: 265,
      margin: EdgeInsets.all(5),
      child: new ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: <Widget>[
          ItemNoiDungKHM(
            img: 'asset/image/khoahocmoi.png',
            cauhoi:
            'H2 + O2 => HOHOs ? Công thức huyền thoại này đúng hay sai?',
            monhoc: 'Môn hóa',
          ),
          ItemNoiDungKHM(
            img: 'asset/image/khoahocmoi.png',
            cauhoi:
            'H2 + O2 => HOHOs ? Công thức huyền thoại này đúng hay sai?',
            monhoc: 'Môn hóa',
          ),
          ItemNoiDungKHM(
            img: 'asset/image/khoahocmoi.png',
            cauhoi:
            'H2 + O2 => HOHOs ? Công thức huyền thoại này đúng hay sai?',
            monhoc: 'Môn hóa',
          ),
        ],
      ),
    );
  }
}

class ItemNoiDungKHM extends StatelessWidget {
  const ItemNoiDungKHM({
    Key key,
    @required this.img,
    @required this.cauhoi,
    @required this.monhoc,
  }) : super(key: key);
  final String img, cauhoi, monhoc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 265,
      height: 219,
      margin: EdgeInsets.only(right: 19, top: 4, left: 4, bottom: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2.0,
            blurRadius: 2.0,
            offset: Offset(
              0.0, // Move to right 10  horizontally
              0.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(img),
                    height: 123,
                    width: 251,
                    //fit: BoxFit.cover,
                  ),
                ),
                Text(
                  cauhoi,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  monhoc,
                  style: TextStyle(fontSize: 14, color: Color(0xffBB2634)),
                ),
                Text(
                  'Môn hóa',
                  style: TextStyle(fontSize: 14, color: Color(0xffBB2634)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SliderDangHoc extends StatelessWidget {
  const SliderDangHoc({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height * 0.2,
          child: new ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: <Widget>[
              IteamDangHoc(width: width, height: height),
              IteamDangHoc(width: width, height: height),
            ],
          ),
        ),
      ],
    );
  }
}

class IteamDangHoc extends StatelessWidget {
  const IteamDangHoc({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.95,
      height: height,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2.0,
            blurRadius: 2.0,
            offset: Offset(
              0.0, // Move to right 10  horizontally
              0.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage('asset/image/Danghoc.png'),
                height: height,
                width: width * 0.4 - 5,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            width: width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
                Container(
                  child: Text(
                    'Môn hóa',
                    style: TextStyle(fontSize: 14, color: Color(0xffBB2634)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetTenMuc extends StatelessWidget {
  const WidgetTenMuc({
    Key key,
    @required this.width,
    @required this.TenMuc,
    @required this.textBt,
  }) : super(key: key);

  final double width;
  final String TenMuc;
  final String textBt;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      width: width * 0.8,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '' + TenMuc,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              textBt,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

class LineView extends StatelessWidget {
  const LineView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      height: 5.0,
      width: double.infinity,
      color: Colors.grey[300],
    );
  }
}

class UserView extends StatelessWidget {
  const UserView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Xin chào,',
                style: TextStyle(fontSize: 10),
              ),
              Text(
                'Đức Huân',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          Container(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: AssetImage('asset/image/huan.jpg'))),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Gridview extends StatelessWidget {
  const Gridview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: 225,
      width: width,
      child: GridViewCV(),
    );
  }
}

class SliderPicture extends StatelessWidget {
  const SliderPicture({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
      height: height * 0.15,
      width: width,
      child: ListView(
        children: [
          SizedBox(
            height: height * 0.15,
            width: double.infinity,
            child: Carousel(
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotColor: Colors.lightGreenAccent,
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.transparent,
              dotVerticalPadding: 0.0,
              images: [
                InkWell(
                  onTap: () {
                    print('Chọn hình _____________');
                  },
                  child: Image.asset(
                    'asset/image/LMSView.png',
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('Chọn hình _____________');
                  },
                  child: Image.asset(
                    'asset/image/LMSView.png',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GridViewCV extends StatelessWidget {
  const GridViewCV({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GridView.count(
      crossAxisCount: 3,
      // mainAxisSpacing: 0,
      // crossAxisSpacing: 140,
      childAspectRatio: 1.0,
      padding: const EdgeInsets.all(5.0),
      mainAxisSpacing: 14.0,
      crossAxisSpacing: 140.0,
      //  childAspectRatio:,
      children: <Widget>[
        Container(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CalendarPage();
              }));
              print('-> lịch học tập');
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Icon(
                      Icons.date_range,
                      color: Color(0xFFBB2634),
                      size: 25.0,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: Text('Lịch học tập',
                          style: new TextStyle(fontSize: 10.0))),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Icon(
                      Icons.cast_for_education,
                      color: Color(0xFFC32C6D),
                      size: 25.0,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: Text('Khóa học tập',
                          style: new TextStyle(fontSize: 10.0))),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Icon(
                      Icons.lightbulb_outline,
                      color: Color(0xFF833B78),
                      size: 25.0,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: Text('Cuộc thi của tôi',
                          style: new TextStyle(fontSize: 10.0))),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Icon(
                      Icons.subtitles_outlined,
                      color: Color(0xFF57477D),
                      size: 25.0,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: Text('Tin tức',
                          style: new TextStyle(fontSize: 10.0))),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Icon(
                      Icons.stars_outlined,
                      color: Color(0xFF57477D),
                      size: 25.0,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: Text('Sự kiện',
                          style: new TextStyle(fontSize: 10.0))),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;

  CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
        @required this.iconList,
        @required this.onChange});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }

    return Row(
      children: _navBarItemList,
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / _iconList.length,
        decoration: index == _selectedIndex
            ? BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 4, color: Colors.white),
            ),
            gradient: LinearGradient(colors: [
              Colors.white.withOpacity(0.3),
              Colors.white.withOpacity(0.015),
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
          // color: index == _selectedItemIndex ? Colors.green : Colors.white,
        )
            : BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedIndex ? Colors.red : Colors.grey,
        ),
      ),
    );
  }
}
