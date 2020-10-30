import 'package:flutter/material.dart';
import 'package:ca/constants.dart';
import 'package:ca/styleguide/text_styles.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
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
        title: Center(
          child: Text(
            'الطليات',
            style: TextStyle(
                color: Color(0xffD91F26),
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo'),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  color: geryColor,
                  child: Center(
                    child: Column(
//
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(30.0),
                          height: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            //color: blueColor,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: Image.asset(
                              "assets/img/Pharmacy-Assistant.jpg",
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 30.0, right: 30.0, bottom: 40),

//                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                " المقاس :",
                                maxLines: 2,
                                softWrap: true,
                                style: TextStyle(
                                    color: Color(0xFF0C2444),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "M",
                                maxLines: 2,
                                softWrap: true,
                                style: TextStyle(
                                    color: Color(0xFF0C2444),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 30.0, right: 30.0, bottom: 40),

//                          padding: const EdgeInsets.all(8.0),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                " الالوان :",
                                maxLines: 2,
                                softWrap: true,
                                style: TextStyle(
                                    color: Color(0xFF0C2444),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 20.0,
                                    width: 20.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: Colors.black,
                                      //color: blueColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Container(
                                    height: 20.0,
                                    width: 20.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: Colors.blue,
                                      //color: blueColor,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 30.0, right: 30.0, bottom: 40),

//                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                " السعر :",
                                maxLines: 2,
                                softWrap: true,
                                style: TextStyle(
                                    color: Color(0xFF0C2444),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "\$50",
                                maxLines: 2,
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, right: 150.0, bottom: 30.0),
                          child: _btn('موافقه', () {}),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: _bar(),
              ),
              _barBottom(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _filedAndImg() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
//            Navigator.push(
//              context,
//              MaterialPageRoute(builder: (context) => MyOrder()),
//              // PagesTestWidget()),
//            );
          },
          child: Container(
            margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF0C2444)),
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
                color: Colors.white,
                image:
                    DecorationImage(image: AssetImage("assets/img/gift.png"))),
          ),
        ),

        _textFieldIcon(),
//
      ],
    );
  }

  Widget _filedIconAndText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

        _textFieldIcon(),
//
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

  Widget _textFieldIcon() {
    return new Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new TextField(
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15.0, color: Color(0xFF8D8D8D), fontFamily: 'Cairo'),
          decoration: InputDecoration(
            focusColor: Colors.transparent,
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            filled: true,
            fillColor: Color(0xFFE2E3E3),
//            icon: Icon(Icons.keyboard_arrow_down),
            enabledBorder: new OutlineInputBorder(
              borderSide: new BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            prefixIcon: Icon(Icons.keyboard_arrow_down),

            hintText: ' 2020/02/01',
          ),
        ),
      ),
    );
  }

  Widget _btn(String txt, onClick()) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding:
            EdgeInsets.only(top: 8.0, bottom: 8.0, left: 30.0, right: 30.0),
        //height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: blueColor,
        ),
        child: Center(child: Text(txt, style: normalWhiteStyle)),
      ),
    );
  }

  Widget _barBottom() {
    return Container(
      margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
      height: 5.0,
      width: 180.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Color(0xFF0C2444),
      ),
    );
  }
}
