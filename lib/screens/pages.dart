import 'package:flutter/material.dart';
//import 'package:neumorphic_design_app/sidebar/sidebar_layout.dart';

import 'home.dart';
import 'notifications.dart';
import 'offers.dart';
// import 'profile.dart';


//import 'package:ant_icons/ant_icons.dart';

// ignore: must_be_immutable
class PagesTestWidget extends StatefulWidget {
  int currentTab;
  Widget currentPage = HomeWidget();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  PagesTestWidget({
    Key key,
    this.currentTab,
  }) {
    currentTab = currentTab != null ? currentTab : 3;
  }

  @override
  _PagesTestWidgetState createState() {
    return _PagesTestWidgetState();
  }
}

class _PagesTestWidgetState extends State<PagesTestWidget> {
  initState() {
    super.initState();
    _selectTab(widget.currentTab);
  }

  @override
  void didUpdateWidget(PagesTestWidget oldWidget) {
    _selectTab(oldWidget.currentTab);
    super.didUpdateWidget(oldWidget);
  }

  void _selectTab(int tabItem) {
    setState(() {
      widget.currentTab = tabItem;
      switch (tabItem) {
        case 3:
          widget.currentPage =
              HomeWidget(parentScaffoldKey: widget.scaffoldKey);
          break;
        case 1:
          widget.currentPage =
              OffersWidget(parentScaffoldKey: widget.scaffoldKey);
          break;
        case 2:
          widget.currentPage =
              NotificationsWidget(parentScaffoldKey: widget.scaffoldKey);
          break;
        // case 0:
        //   widget.currentPage =
        //       ProfileWidget(parentScaffoldKey: widget.scaffoldKey);
        //   break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: widget.scaffoldKey,
//        drawer: SidebarLayout(),
        body: widget.currentPage,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xFFd91f26),

            iconSize: 22,
            elevation: 0,
            backgroundColor: Color(0xFFf0eded),
            selectedIconTheme:
                IconThemeData(size: 28, color: Color(0xFFd91f26)),
            unselectedItemColor: Color(0xFF0C2444),
            currentIndex: widget.currentTab,
            onTap: (int i) {
              this._selectTab(i);
            },
            // this will be set when a tab is tapped
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text(
                  'الحساب',
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_offer),
                title: Text(
                  'العروض',
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text(
                  'الاشعارات',
                ),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("الرئيسيه")),
            ],
          ),
        ),
      ),
    );
  }
}
