import 'package:ca/components/allWidget.dart';
import 'package:ca/screens/car_type.dart';
import 'package:flutter/material.dart';

class Car extends StatefulWidget {
  @override
  _CarState createState() => _CarState();
}

class _CarState extends State<Car> {
  @override
  double _deviceHeight;
  double _deviceWidth;

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Form(
                  //key: _formKey,

                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      _carTypeTextField(),
                      SizedBox(
                        height: 10.0,
                      ),
                      _modelTextField(),
                      SizedBox(
                        height: 10.0,
                      ),
                      _typeOfDireveyTextField(),
                      SizedBox(
                        height: 10.0,
                      ),
                      _numberOfCardTextField(),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'اضف صوره السياره',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                            ),
                          ),
                          // Icon(Icons.star, color: Colors.black),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(40.0),
                              color: Colors.black12,
                              child: Icon(Icons.add, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'اضف صوره الرخصه',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                            ),
                          ),
                          // Icon(Icons.star, color: Colors.black),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(40.0),
                              color: Colors.black12,
                              child: Icon(Icons.add, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'اضف الاستماره',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                            ),
                          ),
                          // Icon(Icons.star, color: Colors.black),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(40.0),
                              color: Colors.black12,
                              child: Icon(Icons.add, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      WiBlutBtn(
                          txt: 'انصم',
                          onClick: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CarType()),
                            );
                          })
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                    height: 5.0,
                    width: 180.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Color(0xFF0C2444),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _carTypeTextField() {
    return TextFormField(
      style: TextStyle(
        fontSize: 15.0,
        color: Color(0xFF8D8D8D),
        fontFamily: 'Cairo',
      ),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'نوع السياره',
        prefixIcon: Icon(Icons.drive_eta, color: Color(0xFFA0C2444)),
      ),
      validator: (String value) {
        if (value.length < 8) {
          return 'Password must be at least 8 characters long.';
        }
        return null;
      },
    );
  }

  Widget _modelTextField() {
    return TextFormField(
      style: TextStyle(
        fontSize: 15.0,
        color: Color(0xFF8D8D8D),
        fontFamily: 'Cairo',
      ),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'الموديل',
        prefixIcon: Icon(Icons.confirmation_number, color: Color(0xFFA0C2444)),
      ),
    );
  }

  Widget _typeOfDireveyTextField() {
    return TextFormField(
      style: TextStyle(
        fontSize: 15.0,
        color: Color(0xFF8D8D8D),
        fontFamily: 'Cairo',
      ),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'نوع التوصيل',
        prefixIcon: Icon(Icons.insert_drive_file, color: Color(0xFFA0C2444)),
      ),
      validator: (String value) {
        if (value.length < 8) {
          return 'Password must be at least 8 characters long.';
        }
        return null;
      },
    );
  }

  Widget _numberOfCardTextField() {
    return TextFormField(
      style: TextStyle(
        fontSize: 15.0,
        color: Color(0xFF8D8D8D),
        fontFamily: 'Cairo',
      ),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'رقم بطاقة الاحوال/الاقامة',
        prefixIcon: Icon(Icons.add, color: Color(0xFFA0C2444)),
      ),
    );
  }
}
