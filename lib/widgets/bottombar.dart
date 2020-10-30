import 'package:ca/widgets/barItem.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final bool proActive;
  final bool ofActive;
  final bool homeActive;

  const BottomBar({
    this.proActive = false,
    this.ofActive = false,
    this.homeActive = false,
  });
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size / 2;
    return Container(
      decoration: BoxDecoration(color: Color(0xFFFFFF2F2F2)),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFf0eded),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: BarItem(
                menuTitleItem: "الحساب",
                iconItem: Icons.person,
                isActiveItem: proActive,
                pressItem: () {
                  // todo Your link

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Menu()),
                  // );
                },
              ),
            ),
            Expanded(
              child: BarItem(
                menuTitleItem: "العروض",
                isActiveItem: ofActive,
                iconItem: Icons.local_offer,
                pressItem: () {
                  // todo Your link
                },
                // isActiveItem: true,
              ),
            ),
            Expanded(
              child: BarItem(
                menuTitleItem: "الرئيسيه",
                iconItem: Icons.home,
                isActiveItem: homeActive,
                pressItem: () {
                  // todo Your link
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
