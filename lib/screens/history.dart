import 'package:ca/constants.dart';

import 'package:ca/screens/menu.dart';

import 'package:ca/widgets/app_clipper.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class Histroy extends StatefulWidget {
  @override
  _HistroyState createState() => _HistroyState();
}

class _HistroyState extends State<Histroy> {
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                'سجل رحلتي',
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
                        child: Text(
                          'ابحث في رحلاتك السابقة!',
                          style: TextStyle(
                              color: Color(0xFFA0C2444),
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta,
                                    color: Color(0xFF0C2444)),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.drive_eta),
                                title: Text('لقد سافرت مع قصي الي الجنه'),
                                subtitle: Text('التاريخ : 2020/04/01'),
                                trailing: Icon(
                                  Icons.cancel,
                                  color: Color(0xfffaa3333),
                                ),
                              ),
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
            _Positioned(
                "المشتريات", " المحفظه  ", "   السجل", "   الاشعارات  "),
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Menu()),
              );
            },
            child: Icon(Icons.menu),
          ),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
}
