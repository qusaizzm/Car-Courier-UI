import 'package:ca/components/allWidget.dart';
import 'package:ca/screens/login_ver.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ca/screens/rest_password.dart';
import 'package:ca/screens/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final _formKey = GlobalKey<FormState>();

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
            // Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
                      

      bottomSheet: _modalBottomSheetMenu(),
      body: Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                        color: Color(0xffD91F26),
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      //key: _formKey,

                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          WiTxtEdit(
                            hitTxt: 'رقم الهاتف',
                            icon:Icons.smartphone
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          WiBlutBtn(
                              txt: 'دخول',
                              onClick: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginVer()),
                                );
                              }),
                          SizedBox(
                            height: 15.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResetPass()),
                              );
                            },
                            child: Text('هل نسيت كلمة السر؟'),
                          ),

                          //_btn(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _modalBottomSheetMenu() {
    return Container(
      decoration: BoxDecoration(color: Colors.transparent),
      padding: EdgeInsets.only(left: 4.0, right: 4.0),
      //margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
      height: MediaQuery.of(context).size.height / 10,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'ليس لدسك حساب؟',
                  style: TextStyle(color: Colors.grey, fontSize: 18.0),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: Text(
                    'انشاء حساب',
                    style: TextStyle(color: Colors.red, fontSize: 18.0),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
              height: 5.0,
              width: 180.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Color(0xFF0C2444),
              ),
            )
          ],
        ),
      ),
    );
  }
}
