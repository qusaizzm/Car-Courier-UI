import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
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
          'محفظة كورير',
          style: TextStyle(
              color: Color(0xffD91F26),
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                      'رصيدك الحالي : 00.0 ر.س',
                      style: TextStyle(
                          color: Color(0xFF0C2444),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                        //key: _formKey,

                        child: Column(
                          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                ' اضافة رصيد :',
                                style: TextStyle(
                                    color: Color(0xffD91F26),
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                // _nameTextField(),
                                new Flexible(
                                  child: new TextField(
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Color(0xFF8D8D8D),
                                        fontFamily: 'Cairo'),
                                    decoration: InputDecoration(
                                      focusColor: Colors.transparent,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 5.0),
                                      filled: true,
                                      fillColor: Color(0xFFE2E3E3),
                                      border: new OutlineInputBorder(
                                        borderSide: new BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      hintText: '   ادخل المبلغ ',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => PagesTestWidget()),
                                    // );
                                  },
                                  child: Container(
                                    height: 50.0,
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Color(0xFF0C2444),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'إضافة',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontFamily: 'Cairo'),
                                    )),
                                  ),
                                ),

                                // new Flexible(
                                //   child: new TextField(
                                //     decoration: const InputDecoration(
                                //         helperText: "Enter App ID"),
                                //     style: Theme.of(context).textTheme.body1,
                                //   ),
                                // ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'طريقة الدفع :',
                                style: TextStyle(
                                    color: Color(0xffD91F26),
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Icon(Icons.add, color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'فيزا طارد',
                                  style: TextStyle(
                                      color: Color(0xFF0C2444),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'),
                                ),
                                // Icon(Icons.star, color: Colors.black),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Icon(Icons.add, color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'باي بال',
                                  style: TextStyle(
                                      color: Color(0xFF0C2444),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'),
                                ),
                                // Icon(Icons.star, color: Colors.black),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Icon(Icons.add, color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),

                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'محفظة كوراير',
                                  style: TextStyle(
                                      color: Color(0xFF0C2444),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'),
                                ),
                                // Icon(Icons.star, color: Colors.black),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  margin:
                                      EdgeInsets.only(top: 5.0, bottom: 4.0),
                                  height: 3.0,
                                  // width: 180.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Color(0xFF0C2444),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Text(
                                    'تحويل رصيد :',
                                    style: TextStyle(
                                        color: Color(0xffD91F26),
                                        fontSize: 23.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Cairo'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'من :',
                                  style: TextStyle(
                                      color: Color(0xFF0C2444),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'),
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),

                                new Flexible(
                                  child: new TextField(
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Color(0xFF8D8D8D),
                                        fontFamily: 'Cairo'),
                                    decoration: InputDecoration(
                                      focusColor: Colors.transparent,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 5.0),
                                      filled: true,
                                      fillColor: Color(0xFFE2E3E3),
                                      border: new OutlineInputBorder(
                                        borderSide: new BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      hintText: '   انا ',
                                    ),
                                  ),
                                ),

                                // Icon(Icons.star, color: Colors.black),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'الي :',
                                  style: TextStyle(
                                      color: Color(0xFF0C2444),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'),
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                new Flexible(
                                  child: new TextField(
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Color(0xFF8D8D8D),
                                        fontFamily: 'Cairo'),
                                    decoration: InputDecoration(
                                      focusColor: Colors.transparent,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 5.0),
                                      filled: true,
                                      fillColor: Color(0xFFE2E3E3),
                                      border: new OutlineInputBorder(
                                        borderSide: new BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      hintText: '   المرسل ',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'المبلغ :',
                                  style: TextStyle(
                                      color: Color(0xFF0C2444),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'),
                                ),
                                SizedBox(
                                  width: 16.0,
                                ),
                                new Flexible(
                                  child: new TextField(
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Color(0xFF8D8D8D),
                                        fontFamily: 'Cairo'),
                                    decoration: InputDecoration(
                                      focusColor: Colors.transparent,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 5.0),
                                      filled: true,
                                      fillColor: Color(0xFFE2E3E3),
                                      border: new OutlineInputBorder(
                                        borderSide: new BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      hintText: '   انا ',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            _btn(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
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
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _nameTextField() {
    return TextFormField(
      style: TextStyle(fontSize: 15.0, color: Color(0xFF8D8D8D)),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        hintText: 'رقم الهاتف',
        prefixIcon: Icon(Icons.smartphone, color: Color(0xFFA0C2444)),
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
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => PagesTestWidget()),
        // );
      },
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Color(0xFF0C2444),
        ),
        child: Center(
            child: Text(
          'تحويل',
          style: TextStyle(fontSize: 18, color: Colors.white),
        )),
      ),
    );
  }
}
