import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatefulWidget {

  final Function changePage;
  About({this.changePage});

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
                    Icons.account_box,
                    size: width >= 602 ? 35 : 25,
                    color: Colors.yellow,
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
                              'ABOUT',
                              style: GoogleFonts.montserrat(
                                fontSize: width >= 602 ? 16 : 12,
                                letterSpacing: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'ME',
                              style: GoogleFonts.montserrat(
                                fontSize: width >= 602 ? 16 : 12,
                                letterSpacing: 10,
                                color: Colors.yellow,
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
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(
                    left: width >= 602 ? 30 : 15,
                    right: width >= 602 ? 30 : 15,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        Title(width: width),
                        SizedBox(height: 60),
                        SubHeader(text: 'Personal Info'),
                        PersonalInfo(width: width),
                        SizedBox(height: 45),
                        SubHeader(text: 'Services'),
                        // END
                        Container(
                          width: width,
                          padding: EdgeInsets.symmetric(
                            horizontal: width >= 531 ? 26 : 16,
                            vertical: 30,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF232D48),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: width >= 709
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ServiceText(
                                      width: width,
                                      no: '01',
                                      title: 'Web Development',
                                      subTitle:
                                          'Web development is the work involved in developing a web site for the Internet (World Wide Web) or an intranet (a private network).',
                                    ),
                                    ServiceText(
                                      width: width,
                                      no: '02',
                                      title: 'Mobile App Development',
                                      subTitle:
                                          'Mobile app development is the act or process by which a mobile app is developed for mobile devices, such as personal digital assistants, enterprise digital assistants or mobile phones.',
                                    ),
                                  ],
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ServiceText(
                                      width: width,
                                      no: '01',
                                      title: 'Web Development',
                                      subTitle:
                                          'Web development is the work involved in developing a web site for the Internet (World Wide Web) or an intranet (a private network).',
                                    ),
                                    ServiceText(
                                      width: width,
                                      no: '02',
                                      title: 'Mobile App Development',
                                      subTitle:
                                          'Mobile app development is the act or process by which a mobile app is developed for mobile devices, such as personal digital assistants, enterprise digital assistants or mobile phones.',
                                    ),
                                  ],
                                ),
                        ),
                        SizedBox(height: 45),
                      ],
                    ),
                  ),
                ),
                CloseButton(changePage: widget.changePage)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CloseButton extends StatefulWidget {
  final Function changePage;

  const CloseButton({
    Key key,
    this.changePage
  }) : super(key: key);

  @override
  _CloseButtonState createState() => _CloseButtonState();
}

class _CloseButtonState extends State<CloseButton> {
  Color _color = Color(0xFFa8a8a8);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 30,
      top: 20,
      child: InkWell(
        onTap: () {
          widget.changePage();
        },
        onHover: (hover) {
          setState(() {
            _color = hover ? Color(0xFFeeeeee) : Color(0xFFa8a8a8);
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Icon(
            Icons.close,
            size: 20,
          ),
        ),
      ),
    );
  }
}

class ServiceText extends StatelessWidget {
  const ServiceText(
      {Key key, @required this.width, this.no, this.title, this.subTitle})
      : super(key: key);

  final String no, title, subTitle;

  final double width;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 250,
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        width: width >= 1062
            ? (((width - (60 + 435 + (30 * 2) + (30 * 2) + (26.0 * 2))) / 2) -
                15)
            : width >= 709
                ? (((width - (60 + (30 * 2) + (30 * 2) + (26.0 * 2))) / 2) - 15)
                : double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF182137),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Container(
              width: width,
              height: 50,
              color: Color(0xFF182137),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Service',
                      style: GoogleFonts.openSans(
                        color: Color(0xFFff9472),
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      no,
                      style: GoogleFonts.openSans(
                        color: Color(0xFFff9472),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: width,
              padding: EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 20,
              ),
              child: Column(
                children: [
                  ClipRect(
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            FontAwesome.angle_double_right,
                            color: Color(0xFFFF9472),
                            size: 18,
                          ),
                          SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              title,
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 15,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    subTitle,
                    style: GoogleFonts.openSans(
                      color: Color(0xFFa8a8a8),
                      fontSize: 15,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width >= 531 ? 26 : 16,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: Color(0xFF232D48),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          width <= 602
              ? Container(
                  margin: EdgeInsets.only(bottom: 22),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      'assets/me.jpeg',
                      width: width,
                      height: width,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(),
          Padding(
            padding: EdgeInsets.only(right: width >= 738 ? 100 : 0),
            child: Text(
              'I am a Mobile & Web Developer from Malang, Indonesia. I am very passionate and dedicated to my work. I have 1 year work experience. And enjoy working in a team or individual.',
              style: GoogleFonts.openSans(
                color: Color(0xFFa8a8a8),
                fontSize: 15,
                height: 1.5,
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: width,
            child: Row(
              children: [
                Container(
                  width: width >= 1243
                      ? (width - (60.0 + 60 + 435 + 60 + 52)) / 2
                      : width >= 1062
                          ? (width - (60.0 + 60 + 435 + 60 + 52)) / 1
                          : width > 815
                              ? (width - (60.0 + 60 + 60 + 52)) / 2
                              : width >= 520
                                  ? (width - (60.0 + 60 + 60 + 52)) / 1
                                  : (width - (30.0 + 30 + 30 + 52)) / 1,
                  child: Column(
                      children: width >= 1243 || (width < 1243 && width > 814)
                          ? [
                              SingleText('First Name', 'Ahmad'),
                              SingleText('Last Name', 'Khamdani'),
                              SingleText('Date of Birth', '10 Apr 2003'),
                              SingleText('Nationality', 'Indonesia'),
                            ]
                          : [
                              SingleText('First Name', 'Ahmad'),
                              SingleText('Last Name', 'Khamdani'),
                              SingleText('Date of Birth', '10 Apr 2003'),
                              SingleText('Nationality', 'Indonesia'),
                              SingleText('Phone', '+62 896 8159 3634'),
                              SingleText('Phone', '+62 896 8159 3634'),
                              SingleText('Email', 'ahmadkhamdani9@gmail.com'),
                              SingleText('Address', 'Malang, Indonesia'),
                              SingleText('Languanges', 'English, Bahasa'),
                            ]),
                ),
                width >= 1243 || (width <= 1061 && width >= 814)
                    ? Container(
                        width: width >= 1243
                            ? (width - (60.0 + 60 + 435 + 60 + 52)) / 2
                            : width >= 1062
                                ? (width - (60.0 + 60 + 435 + 60 + 52)) / 1
                                : (width - (60.0 + 60 + 60 + 52)) / 2,
                        child: Column(
                          children: [
                            SingleText('Phone', '+62 896 8159 3634'),
                            SingleText('Email', 'ahmadkhamdani9@gmail.com'),
                            SingleText('Address', 'Malang, Indonesia'),
                            SingleText('Languanges', 'English, Bahasa'),
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          SocMed()
        ],
      ),
    );
  }
}

class SocMed extends StatefulWidget {
  const SocMed({
    Key key,
  }) : super(key: key);

  @override
  _SocMedState createState() => _SocMedState();
}

class _SocMedState extends State<SocMed> {
  var hover = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  var textHover = [
    Color(0xFF232D48),
    Color(0xFF232D48),
    Color(0xFF232D48),
    Color(0xFF232D48)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 30),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              js.context.callMethod(
                  'open', ['https://web.facebook.com/lexeto.farron']);
            },
            onHover: (onHover) {
              setState(() {
                hover[0] = onHover ? Color(0xFF232D48) : Colors.white;
                textHover[0] = onHover ? Colors.white : Color(0xFF232D48);
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: 40,
              height: 40,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: hover[0],
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Icon(
                FontAwesome.facebook,
                size: 17,
                color: textHover[0],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              js.context
                  .callMethod('open', ['https://twitter.com/Rizal92183683']);
            },
            onHover: (onHover) {
              setState(() {
                hover[1] = onHover ? Color(0xFF232D48) : Colors.white;
                textHover[1] = onHover ? Colors.white : Color(0xFF232D48);
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: 40,
              height: 40,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: hover[1],
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Icon(
                FontAwesome.twitter,
                size: 17,
                color: textHover[1],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              js.context.callMethod(
                  'open', ['https://www.instagram.com/ahmad.khamdani2/']);
            },
            onHover: (onHover) {
              setState(() {
                hover[2] = onHover ? Color(0xFF232D48) : Colors.white;
                textHover[2] = onHover ? Colors.white : Color(0xFF232D48);
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: 40,
              height: 40,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: hover[2],
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Icon(
                FontAwesome.instagram,
                size: 17,
                color: textHover[2],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              js.context.callMethod('open',
                  ['https://www.linkedin.com/in/ahmad-khamdani-7a4815169/']);
            },
            onHover: (onHover) {
              setState(() {
                hover[3] = onHover ? Color(0xFF232D48) : Colors.white;
                textHover[3] = onHover ? Colors.white : Color(0xFF232D48);
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: 40,
              height: 40,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: hover[3],
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Icon(
                FontAwesome.linkedin,
                size: 17,
                color: textHover[3],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SingleText extends StatelessWidget {
  SingleText(this.text1, this.text2);

  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              FontAwesome.angle_double_right,
              color: Color(0xFFFF9472),
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              '${text1} - ',
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: 15,
                height: 1.5,
              ),
            ),
            Flexible(
              child: Text(
                '${text2}',
                style: GoogleFonts.openSans(
                  color: Color(0xFFa8a8a8),
                  fontSize: 15,
                  height: 1.5,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubHeader extends StatelessWidget {
  const SubHeader({Key key, this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 6),
          Container(
            width: 25,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ABOUT',
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: width >= 602 ? 33 : 20,
              letterSpacing: 1,
            ),
          ),
          SizedBox(width: 10),
          Text(
            'ME',
            style: GoogleFonts.montserrat(
              color: Color(0xFFFF9472),
              fontWeight: FontWeight.w800,
              fontSize: width >= 602 ? 33 : 20,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
