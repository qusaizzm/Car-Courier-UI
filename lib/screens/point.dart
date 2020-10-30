import 'package:ca/constants.dart';

import 'package:ca/styleguide/text_styles.dart';
import 'package:ca/widgets/app_clipper.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class Point extends StatefulWidget {
  @override
  _PointState createState() => _PointState();
}

class _PointState extends State<Point> {
  PageController pageController = PageController(viewportFraction: .8);
  var paddingLeft = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 60),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios),
                            ),
                            SizedBox(
                              width: 40.0,
                            ),
                            Center(
                              child: Text(
                                'نقاط المكاقئه',
                                style: TextStyle(
                                    color: Color(0xffD91F26),
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'لديك نقاط مكافئه مع كوراير',
                            style: TextStyle(
                                color: Color(0xFFA0C2444),
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: new Padding(
                                padding: new EdgeInsets.all(30.0),
                                child: new TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    focusColor: Colors.transparent,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 50.0, horizontal: 5.0),
                                    filled: true,
                                    fillColor: Color(0xFFE2E3E3),
                                    border: new OutlineInputBorder(
                                      borderSide: new BorderSide(
                                        color: Colors.transparent,
                                      ),
                                      borderRadius: BorderRadius.horizontal(),
                                    ),
                                    hintText: ' 00.0 ر.س',
                                  ),
                                ),
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.symmetric(
                              //       horizontal: 16, vertical: 16),
                              //   child: TextFormField(
                              //     style: TextStyle(
                              //         fontSize: 33.0, color: Color(0xFF8D8D8D)),
                              //     decoration: InputDecoration(
                              //       focusColor: Colors.transparent,
                              //       contentPadding: EdgeInsets.symmetric(
                              //           vertical: 50.0, horizontal: 5.0),
                              //       filled: true,
                              //       fillColor: Color(0xFFE2E3E3),
                              //       border: new OutlineInputBorder(
                              //         borderSide: new BorderSide(
                              //           color: Colors.transparent,
                              //         ),
                              //         borderRadius: BorderRadius.horizontal(),
                              //       ),
                              //       hintText: ' 00.0 ر.س',
                              //     ),
                              //   ),
                              // ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'توصيل ركاب',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 23.0,
                                fontFamily: 'Cairo'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Form(
                          //key: _formKey,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              _fromTextField(),

                              SizedBox(
                                height: 20.0,
                              ),
                              _toTextField(),
                              SizedBox(
                                height: 20.0,
                              ),
                              _pointTextField(),
                              SizedBox(
                                height: 20.0,
                              ),
                              _btn(),
                              SizedBox(
                                height: 15.0,
                              ),

                              //_btn(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

//              _buildRightSection(),
            ),
            _sidebar(),
            _Positioned("اموزن", "هاي هيلز", "جوميا", " سوق الدهب    "),
          ],
        ),
      ),
    );
  }

  Widget _sidebar() {
    return Container(
      color: goldColor,
      height: MediaQuery.of(context).size.height,
      width: 60,
      padding: EdgeInsets.only(top: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
//
          Icon(Icons.menu),
          SizedBox(
            height: 10,
          ),
          Icon(Icons.search),
        ],
      ),
    );
  }

  Widget _Positioned(String txt1, String txt2, String txt3, String txt4) {
    return Positioned(
      bottom: -110,
      child: Transform.rotate(
        angle: -math.pi / 2,
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                _buildMenu(txt1, 0),
                _buildMenu(txt2, 1),
                _buildMenu(txt3, 2),
                _buildMenu(txt4, 3),
              ],
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 250),
              margin: EdgeInsets.only(right: paddingLeft),
              width: 150,
              height: 75,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipPath(
                      clipper: AppClipper(),
                      child: Container(
                        width: 150,
                        height: 70,
                        color: goldColor,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Transform.rotate(
                      angle: math.pi / 2,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Icon(
                          Icons.arrow_drop_down_circle,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenu(String menu, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          paddingLeft = index * 110.0;
        });
      },
      child: Container(
        width: 120,
        padding: EdgeInsets.only(top: 16),
        child: Center(
          child: Text(
            menu,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  Widget _fromTextField() {
    return TextFormField(
      style: TextStyle(
          fontSize: 18.0, color: Color(0xFF8D8D8D), fontFamily: 'Cairo'),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(88.0),
        ),
        hintText: 'من',
        prefixIcon: Icon(Icons.note, color: Color(0xFFA0C2444)),
      ),
      validator: (String value) {
        if (value.length < 8) {
          return 'Password must be at least 8 characters long.';
        }
        return null;
      },
    );
  }

  Widget _toTextField() {
    return TextFormField(
      style: TextStyle(
          fontSize: 18.0, color: Color(0xFF8D8D8D), fontFamily: 'Cairo'),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(88.0),
        ),
        hintText: 'الي',
        prefixIcon: Icon(Icons.note, color: Color(0xFFA0C2444)),
      ),
      validator: (String value) {
        if (value.length < 8) {
          return 'Password must be at least 8 characters long.';
        }
        return null;
      },
    );
  }

  Widget _pointTextField() {
    return TextFormField(
      style: TextStyle(
          fontSize: 18.0, color: Color(0xFF8D8D8D), fontFamily: 'Cairo'),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(88.0),
        ),
        hintText: 'النقاط',
        prefixIcon: Icon(Icons.note, color: Color(0xFFA0C2444)),
      ),
      validator: (String value) {
        if (value.length < 8) {
          return 'Password must be at least 8 characters long.';
        }
        return null;
      },
    );
  }

  Widget _btn() {
    return GestureDetector(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => ProfileWidget()),
      //   );
      // },
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Color(0xFF0C2444),
        ),
        child: Center(
            child: Text(
          'تحويل',
          style:
              TextStyle(fontSize: 18, color: Colors.white, fontFamily: 'Cairo'),
        )),
      ),
    );
  }
}
