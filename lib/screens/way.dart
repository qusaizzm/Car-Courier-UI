import 'package:ca/screens/menu.dart';
// import 'package:car/screens/profile.dart';
import 'package:flutter/material.dart';

class Way extends StatefulWidget {
  @override
  _WayState createState() => _WayState();
}

class _WayState extends State<Way> {
  @override
  Widget build(BuildContext context) {
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
          'اتبع مسار الرحله للوصول الي الوجهه',
          style: TextStyle(
              color: Color(0xffD91F26),
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Menu()),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'الوقت المتبقي للوصول',
                style: TextStyle(
                    color: Color(0xFF0C2444),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo'),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'دقائق 5:00',
                style: TextStyle(
                    color: Color(0xffD91F26),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo'),
              ),
            ),
            Image.asset(
              "assets/img/loca.PNG",
              height: 500.0,
              // MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
