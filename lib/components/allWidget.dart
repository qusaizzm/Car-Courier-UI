import 'package:ca/constants.dart';
import 'package:ca/styleguide/text_styles.dart';
import 'package:flutter/material.dart';

// Blue Button
class WiBlutBtn extends StatelessWidget {
  final String txt;
  final onClick;

  const WiBlutBtn({Key key, this.txt, this.onClick}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding:
            EdgeInsets.only(top: 8.0, bottom: 8.0, left: 18.0, right: 18.0),
        //height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: blueColor,
        ),
        child: Center(child: Text(txt, style: normalWhiteStyle)),
      ),
    );
  }
}

// TextEdit
class WiTxtEdit extends StatelessWidget {
  final String hitTxt;
  final IconData icon;
  const WiTxtEdit({Key key, this.hitTxt, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: TextStyle(fontSize: 12.0, color: Color(0xFF8D8D8D)),
        decoration: InputDecoration(
          focusColor: Colors.transparent,
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          filled: true,
          fillColor: Color(0xFFE2E3E3),
          enabledBorder: OutlineInputBorder(
            borderSide: new BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
          hintText: hitTxt,
          prefixIcon: Icon(icon, color: Color(0xFFA0C2444)),
        ),
        validator: (String value) {
          if (value.length < 8) {
            return '';
          }
          return null;
        });
  }
}
