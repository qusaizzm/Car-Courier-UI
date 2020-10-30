import 'package:flutter/material.dart';

class TrevelDetails extends StatefulWidget {
  @override
  _TrevelDetailsState createState() => _TrevelDetailsState();
}

class _TrevelDetailsState extends State<TrevelDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xffe2e3e3),
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      bottomSheet: _barBottom(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  //width: 360.0,
                  height: 92.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(22.0),
                        bottomRight: Radius.circular(22.0)),
                    color: const Color(0xffe2e3e3),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      _headTextIcon(),
                      _bar(),
                      Text(
                        " الان مع كوراير يمكنك حجز سباره لجسر الملك فهد.",
                        maxLines: 2,
                        softWrap: true,
                        style: TextStyle(
                            color: Color(0xFF0C2444),
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      _headText(),
                      _bar(),
                      _filedAndText(),
                      _filedAndText(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      _btn(),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _bar() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
          height: 2.0,
          // width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color(0xFF0C2444),
          ),
        )
      ],
    );
  }

  Widget _headText() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 0, top: 8.0, bottom: 0),
      child: Row(
        children: <Widget>[
//
          Text(
            "تفاصيل الوجهه :",
            maxLines: 2,
            softWrap: true,
            style: TextStyle(
                color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _headTextIcon() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.local_car_wash,
          color: Colors.red,
          size: 35.0,
        ),
        Text(
          "جسر الملك فهد :",
          maxLines: 2,
          softWrap: true,
          style: TextStyle(
              color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
//          SizedBox(),
      ],
    );
  }

  Widget _filedAndText() {
    return Row(
      children: <Widget>[
        Text(
          "تاريخ الانطلاق",
          maxLines: 2,
          softWrap: true,
          style: TextStyle(
              color: Color(0xFF0C2444),
              fontSize: 14.0,
              fontWeight: FontWeight.bold),
        ),

        _textField(),

//
      ],
    );
  }

  Widget _barBottom() {
    return Container(
        decoration: BoxDecoration(color: Colors.transparent),
        padding: EdgeInsets.only(left: 4.0, right: 4.0),
        //margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
        height: MediaQuery.of(context).size.height / 10,
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 8.0, bottom: 0.0),
            height: 5.0,
            width: 180.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFF0C2444),
            ),
          ),
        ));
  }

  Widget _btn() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 0),
      child: GestureDetector(
        onTap: () {
//        Navigator.push(
//          context,
//          MaterialPageRoute(builder: (context) => AddDeriver()),
//          // PagesTestWidget()),
//        );
        },
        child: Container(
          height: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color(0xFF0C2444),
          ),
          child: Center(
              child: Text(
            'حجز',
            style: TextStyle(fontSize: 18, color: Colors.white),
          )),
        ),
      ),
    );
  }

  Widget _textField() {
    return new Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new TextField(
          style: TextStyle(
              fontSize: 15.0, color: Color(0xFF8D8D8D), fontFamily: 'Cairo'),
          decoration: InputDecoration(
            focusColor: Colors.transparent,
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            filled: true,
            fillColor: Color(0xFFE2E3E3),
            enabledBorder: new OutlineInputBorder(
              borderSide: new BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: ' 2020/02/01',
          ),
        ),
      ),
    );
  }
}
