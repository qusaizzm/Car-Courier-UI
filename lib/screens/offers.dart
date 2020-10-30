import 'package:flutter/material.dart';

class OffersWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  OffersWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _OffersWidgetState createState() => _OffersWidgetState();
}

class _OffersWidgetState extends State<OffersWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(
                      top: 40.0, left: 12.0, right: 12.0, bottom: 12.0),
                  padding: EdgeInsets.all(12.0),
                  child: _nameTextField()),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _tab('مطاعم', Color(0xfff3e0c8), Color(0xff0c2444), false),
                    _tab('سوبر ماركت', Color(0xfff3e0c8), Color(0xff0c2444),
                        false),
                    _tab('مطاعم', Color(0xfff3e0c8), Color(0xff0c2444), false),
                    _tab('سوبر ماركت', Color(0xfff3e0c8), Color(0xff0c2444),
                        false),
                    _tab('عروض', Color(0xffe2e3e3), Color(0xffd91f26), true),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      _services(),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      _services(),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      _services(),
                    ],
                  ),
                ],
              ),
              // SidebarLayout(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _services() {
    return Expanded(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  //padding: EdgeInsets.all(18.0),
                  margin: EdgeInsets.only(left: 18.0, right: 8.0),
                  // width: 64.0,
                  //height: 64.0,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/img/spectra.jpg',
                        width: 400,
                        height: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    //color: const Color(0xff0c2444),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'اسبيكترا',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Color(0xffff9900),
                        ),
                        Text(
                          '4.9',
                          style: TextStyle(color: Color(0xffff9900)),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Center(
                    child: Text(
                      'اطلب الان',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
//                  width: 67.0,
//                  height: 33.0,
                  padding: EdgeInsets.only(left: 12.0, right: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xff0c2444),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }

  Widget _tab(String txt, Color back, Color txtcol, bool selected) {
    return Column(
      children: <Widget>[
        Container(
          height: 100,
          width: 100,
          padding: EdgeInsets.only(left: 12.0, right: 12.0),
          margin: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Image.asset(
            'assets/img/gift.png',
            fit: BoxFit.cover,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Color(0xfffdfdfd),
            border: Border.all(width: 2.0, color: Color(0xff0c2444)),
          ),
        ),
        Text(
          txt,
          style: TextStyle(
              color: selected ? Color(0xFFd91f26) : Color(0xff0c2444),
              fontSize: 18.0),
        ),
      ],
    );
  }

  Widget _nameTextField() {
    return TextFormField(
      style: TextStyle(fontSize: 16.0, color: Color(0xFF8D8D8D)),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(color: Color(0xff0c2444)),
          borderRadius: BorderRadius.circular(50.0),
        ),
        hintText: 'بحث',
        prefixIcon: Container(
          margin: EdgeInsets.only(left: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0)),
            color: Color(0xff0c2444),
          ),
          child: new IconButton(
              icon: new Icon(
                Icons.search,
                color: Color(0xFFd0ddec),
              ),
              onPressed: null),
        ),
        suffixIcon: Icon(
          Icons.mic_none,
          color: Color(0xff0c2444),
        ),
      ),
    );
  }
}
