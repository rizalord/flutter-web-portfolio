import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  final Function changePage;

  Home({this.changePage});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var colorsHover = [
    Color(0xFF232D48),
    Color(0xFF232D48),
    Color(0xFF232D48),
    Color(0xFF232D48),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Expanded(
      child: Row(
        children: [
          Container(
            width: width >= 602 ? 60 : 40,
            height: height,
            color: Color(0xFF232D48),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Container(
                  width: width >= 602 ? 60 : 40,
                  height: width >= 602 ? 60 : 40,
                  color: Color(0xFF182137),
                  alignment: Alignment.center,
                  child: Icon(
                    FontAwesome.globe,
                    size: width >= 602 ? 35 : 25,
                    color: Color(0xFFFF9472),
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      RotatedBox(
                        quarterTurns: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'HELLO',
                              style: GoogleFonts.montserrat(
                                fontSize: width >= 602 ? 16 : 12,
                                letterSpacing: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'WORLD',
                              style: GoogleFonts.montserrat(
                                fontSize: width >= 602 ? 16 : 12,
                                letterSpacing: 10,
                                color: Color(0xFFFF9472),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'I\'M',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: width >= 602 ? 33 : 20,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'AHMAD KHAMDANI',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFFFF9472),
                            fontWeight: FontWeight.w800,
                            fontSize: width >= 602 ? 33 : 20,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'As a',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(width: 8),
                        TyperAnimatedTextKit(
                          text: ['Web Developer', 'Mobile App Developer'],
                          textStyle: GoogleFonts.montserrat(
                            color: Color(0xFFFF9472),
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                          speed: Duration(milliseconds: 200),
                          pause: Duration(milliseconds: 2000),
                          textAlign: TextAlign.start,
                          alignment: AlignmentDirectional.topStart,
                          isRepeatingAnimation: true,
                        ),
                        // DipDop(),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ClipRect(
                      child: Container(
                        width: width,
                        padding: EdgeInsets.only(
                            left: width >= 602 ? 30 : 15,
                            right: width >= 602 ? 30 : 15,
                            bottom: width >= 602 ? 30 : 0,
                            top: width >= 602 ? 0 : 30),
                        alignment: Alignment.center,
                        child: width < 602
                            ? Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      widget.changePage(index: 1);
                                    },
                                    onHover: (hov) {
                                      setState(() {
                                        colorsHover[0] = hov
                                            ? Color(0xFF293556)
                                            : Color(0xFF232D48);
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 500),
                                      width: width,
                                      height: height * .15,
                                      margin: EdgeInsets.only(
                                          bottom: width >= 602 ? 0 : 10),
                                      decoration: BoxDecoration(
                                        color: colorsHover[0],
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'ABOUT ',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 17,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                ' ME',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 17,
                                                  color: Colors.yellow,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    onHover: (hov) {
                                      setState(() {
                                        colorsHover[1] = hov
                                            ? Color(0xFF293556)
                                            : Color(0xFF232D48);
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 500),
                                      width: width,
                                      height: height * .15,
                                      margin: EdgeInsets.only(
                                          bottom: width >= 602 ? 0 : 10),
                                      decoration: BoxDecoration(
                                        color: colorsHover[1],
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'MY ',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 17,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                ' RESUME',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 17,
                                                  color: Colors.lightBlue,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    onHover: (hov) {
                                      setState(() {
                                        colorsHover[2] = hov
                                            ? Color(0xFF293556)
                                            : Color(0xFF232D48);
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 500),
                                      width: width,
                                      height: height * .15,
                                      margin: EdgeInsets.only(
                                          bottom: width >= 602 ? 0 : 10),
                                      decoration: BoxDecoration(
                                        color: colorsHover[2],
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'MY ',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 17,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                ' PORTFOLIO',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 17,
                                                  color: Color(0xFFf5b888),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    onHover: (hov) {
                                      setState(() {
                                        colorsHover[3] = hov
                                            ? Color(0xFF293556)
                                            : Color(0xFF232D48);
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 500),
                                      width: width,
                                      height: height * .15,
                                      margin: EdgeInsets.only(
                                          bottom: width >= 602 ? 0 : 10),
                                      decoration: BoxDecoration(
                                        color: colorsHover[3],
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'CONTACT ',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 17,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                ' ME',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 17,
                                                  color:
                                                      Colors.purpleAccent[200],
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          widget.changePage(index: 1);
                                        },
                                        onHover: (hov) {
                                          setState(() {
                                            colorsHover[0] = hov
                                                ? Color(0xFF293556)
                                                : Color(0xFF232D48);
                                          });
                                        },
                                        child: AnimatedContainer(
                                          duration: Duration(milliseconds: 500),
                                          width: width >= 1062
                                              ? ((width - (60 + 60 + 435.0)) /
                                                      2.13) -
                                                  30
                                              : ((width - (60 + 60)) / 2.13) -
                                                  30,
                                          height: height * .25,
                                          decoration: BoxDecoration(
                                            color: colorsHover[0],
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.account_box,
                                                color: Colors.yellow,
                                                size: 50,
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'ABOUT ',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    ' ME',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      fontSize: 17,
                                                      color: Colors.yellow,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      InkWell(
                                        onTap: () {},
                                        onHover: (hov) {
                                          setState(() {
                                            colorsHover[1] = hov
                                                ? Color(0xFF293556)
                                                : Color(0xFF232D48);
                                          });
                                        },
                                        child: AnimatedContainer(
                                          duration: Duration(milliseconds: 500),
                                          width: width >= 1062
                                              ? ((width - (60 + 60 + 435.0)) /
                                                      2.13) -
                                                  30
                                              : ((width - (60 + 60)) / 2.13) -
                                                  30,
                                          height: height * .25,
                                          decoration: BoxDecoration(
                                            color: colorsHover[1],
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.business_center,
                                                color: Color(0xFFf5b888),
                                                size: 50,
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'MY ',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    ' PORTFOLIO',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      fontSize: 17,
                                                      color: Color(0xFFf5b888),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 30),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        onHover: (hov) {
                                          setState(() {
                                            colorsHover[2] = hov
                                                ? Color(0xFF293556)
                                                : Color(0xFF232D48);
                                          });
                                        },
                                        child: AnimatedContainer(
                                          duration: Duration(milliseconds: 500),
                                          width: width >= 1062
                                              ? ((width - (60 + 60 + 435.0)) /
                                                      2.13) -
                                                  30
                                              : ((width - (60 + 60)) / 2.13) -
                                                  30,
                                          height: height * .25,
                                          decoration: BoxDecoration(
                                            color: colorsHover[2],
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.assignment,
                                                color: Colors.lightBlue,
                                                size: 50,
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'MY ',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    ' RESUME',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      fontSize: 17,
                                                      color: Colors.lightBlue,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      InkWell(
                                        onTap: () {},
                                        onHover: (hov) {
                                          setState(() {
                                            colorsHover[3] = hov
                                                ? Color(0xFF293556)
                                                : Color(0xFF232D48);
                                          });
                                        },
                                        child: AnimatedContainer(
                                          duration: Duration(milliseconds: 500),
                                          width: width >= 1062
                                              ? ((width - (60 + 60 + 435.0)) /
                                                      2.13) -
                                                  30
                                              : ((width - (60 + 60)) / 2.13) -
                                                  30,
                                          height: height * .25,
                                          decoration: BoxDecoration(
                                            color: colorsHover[3],
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.mail,
                                                color: Colors.purpleAccent[200],
                                                size: 50,
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'CONTACT ',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    ' ME',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      fontSize: 17,
                                                      color: Colors
                                                          .purpleAccent[200],
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class DipDop extends StatefulWidget {
//   const DipDop({
//     Key key,
//   }) : super(key: key);

//   @override
//   _DipDopState createState() => _DipDopState();
// }

// class _DipDopState extends State<DipDop> with SingleTickerProviderStateMixin {
//   double _opacity = 1.0;
//   Animation<double> _animation;
//   AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//         vsync: this, duration: Duration(milliseconds: 1000));

//     _animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.ease,
//     )
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           _controller.reverse();
//         } else if (status == AnimationStatus.dismissed) {
//           _controller.forward();
//         }
//       }));

//     _controller.forward();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedOpacity(
//       opacity: _animation.value,
//       duration: Duration(milliseconds: 1000),
//       child: Text(
//         '|',
//         style: GoogleFonts.montserrat(
//           color: Color(0xFFFF9472),
//           fontSize: 18,
//         ),
//       ),
//     );
//   }
// }
