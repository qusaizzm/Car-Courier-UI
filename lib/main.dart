import 'package:ca/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('ar', ''), // Hebrew, no country code
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        return supportedLocales.last;
      },
      title: 'Car',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.transparent),
        //primarySwatch: kPrimaryColor,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Cairo",
        // textTheme: GoogleFonts.Cairo(Theme.of(context).textTheme),
      ),
      home: Login(),
    );
  }
}
