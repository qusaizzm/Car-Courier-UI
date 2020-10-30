import 'package:ca/components/allWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ca/screens/login.dart';
//import '../constants.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'انشاء حساب جديد',
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
                          hitTxt: 'اسم المستخدم',
                          icon: Icons.person,
                        ),

                        SizedBox(
                          height: 10.0,
                        ),
                        WiTxtEdit(
                          hitTxt: "كلمة السر",
                          icon: Icons.lock,
                        ),

                        SizedBox(
                          height: 10.0,
                        ),
                        WiTxtEdit(
                          hitTxt: "تاكيد كلمة السر",
                          icon: Icons.lock,
                        ),

                        SizedBox(
                          height: 20.0,
                        ),
                        WiBlutBtn(
                            txt: 'دخول',
                            onClick: () {
                              //TODO YOT
                            }),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('بضغطك على تسجيل انت توافق على الاحكام و الشروط'),

                        //_btn(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: _modalBottomSheetMenu(),
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
                  'لديك حساب مسبقا؟',
                  style: TextStyle(color: Colors.grey, fontSize: 18.0),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  },
                  child: Text(
                    'تسجيل الدخول',
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
