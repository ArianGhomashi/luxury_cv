import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: _getAppBar(),
        body: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'images/gigachad_smile.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
            ),
            child: SafeArea(
              child: _getMainContent(),
            ),
          ),
        ),
      ),
    );
  }

  Column _getMainContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
        ),
        _getProfilePhoto(),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Arian Ghomashi ',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'QR',
                fontSize: 18,
              ),
            ),
            Text(
              '- Mobile & IoT Developer',
              style: TextStyle(
                color: Colors.grey[600],
                fontFamily: 'QR',
                fontSize: 18,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        _getRowIcons(),
        SizedBox(
          height: 30,
        ),
        Container(
          color: Colors.transparent,
          child: _getSkillsRow(),
        ),
        SizedBox(
          height: 10,
        ),
        _getResume(),
      ],
    );
  }

  Container _getProfilePhoto() {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffC5B358),
          width: 3,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          Icons.phone_iphone,
          color: Color(0xffC5B358),
          size: 80,
        ),
      ),
    );
  }

  Container _getResume() {
    return Container(
      width: double.infinity,
      height: 200,
      child: Column(
        children: [
          Text(
            'سابقه کاری من',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'vazir',
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'ندارم.',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'vazir',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _getAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        'PORTFOLIO',
        style: TextStyle(
          fontFamily: 'QR',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget? _getSkillsRow() {
    var list = ['dart', 'flutter', 'java', 'kotlin', 'esp8266'];

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        for (String skill in list)
          Card(
            elevation: 0,
            color: Colors.transparent,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Image(
                    color: Color(0xffC5B358),
                    width: 60,
                    image: AssetImage('images/$skill.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    skill.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'QR',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

Widget _getRowIcons() {
  return Wrap(
    alignment: WrapAlignment.center,
    children: [
      Icon(
        FontAwesomeIcons.linkedin,
        color: Color(0xffC5B358),
      ),
      SizedBox(
        width: 40,
      ),
      Icon(
        FontAwesomeIcons.telegram,
        color: Color(0xffC5B358),
      ),
      SizedBox(
        width: 40,
      ),
      Icon(
        FontAwesomeIcons.instagramSquare,
        color: Color(0xffC5B358),
      ),
      SizedBox(
        width: 40,
      ),
      Icon(
        FontAwesomeIcons.github,
        color: Color(0xffC5B358),
      ),
    ],
  );
}
