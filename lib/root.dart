import 'package:flutter/material.dart';
import 'package:portfolio/pages/about.dart';
import 'package:portfolio/pages/home.dart';

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  int activeIndex = 1;
  List<Widget> _pages;

  void changePage({index = 0}){
    setState((){
      activeIndex = index;
    });
  }

  @override
  void initState() {
    _pages = [
      Home(changePage: changePage),
      About(changePage: changePage),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF67C8F),
              Color(0xFFFB897F),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        padding: EdgeInsets.all(width >= 602 ? 30 : 15),
        child: Container(
          width: width,
          height: height,
          color: Color(0xFF182137),
          child: Row(
            children: <Widget>[
              _pages[activeIndex],
              width >= 1062
                  ? Image.asset(
                      'assets/me.jpeg',
                      width: 435,
                      height: height,
                      fit: BoxFit.cover,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
