import 'package:ca/screens/way.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarType extends StatefulWidget {
  @override
  _CarTypeState createState() => _CarTypeState();
}

class _CarTypeState extends State<CarType> {
  double _deviceHeight;
  double _deviceWidth;
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F2F2),
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'مرحبا بك كابتن توصيل',
          style: TextStyle(
            color: Color(0xffD91F26),
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Cairo',
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                //key: _formKey,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'نوع السياره :',
                        style: TextStyle(
                          color: Color(0xffD91F26),
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                          height: 2.0,

                          // width:,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Color(0xFF0C2444),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'سيارة سيدات',
                                style: TextStyle(
                                    color: Color(0xFF0C2444),
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Icon(Icons.offline_pin),
                            ),
                            SizedBox(
                              width: 50,
                            )
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'سيارة عائلية',
                                style: TextStyle(
                                    color: Color(0xFF0C2444),
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Icon(Icons.offline_pin),
                            ),
                            SizedBox(
                              width: 50,
                            )
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'سيارة اعمال',
                                style: TextStyle(
                                    color: Color(0xFF0C2444),
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Icon(Icons.offline_pin),
                            ),
                            SizedBox(
                              width: 50,
                            )
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'سيارة نقل',
                                style: TextStyle(
                                    color: Color(0xFF0C2444),
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Icon(Icons.offline_pin),
                            ),
                            SizedBox(width: 50.0),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                          height: 2.0,

                          // width:,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Color(0xFF0C2444),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _btn(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  height: 5.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Color(0xFF0C2444),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _btn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Way()),
        );
      },
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Color(0xFF0C2444),
        ),
        child: Center(
            child: Text(
          'ارسال',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontFamily: 'Cairo',
          ),
        )),
      ),
    );
  }
}
