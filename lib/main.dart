import 'package:flutter/material.dart';
import 'package:revive/Utils/constants.dart';
import 'package:revive/postnatal/Screens/register_page.dart';

import 'Utils/material_color.dart';
import 'postnatal/Screens/land/landing_page.dart';
import 'prenatal/Screens/landing_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  MaterialColor colorCustom = MaterialColor(0xFFB7016E, color_);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Revive",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: colorCustom,

        // fontFamily: "Roboto",
        textTheme: const TextTheme(
            bodyText2: TextStyle(color: txtColor, letterSpacing: 0.2)),

        // textTheme: GoogleFonts.robotoTextTheme(
        //   Theme.of(context).textTheme,
        // ),

        hintColor: hintColor,

        inputDecorationTheme: const InputDecorationTheme(
          isDense: true,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(6.0),
          //   borderSide: BorderSide(color: cCD0F1, width: 1.0),
          // ),
          // contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          hintStyle: TextStyle(color: hintColor, fontSize: 12),
          labelStyle: TextStyle(fontSize: 14),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(6.0),
          //   borderSide: BorderSide(color: hintColor, width: 1.0),
          // ),
        ),
      ),
      // home: "/",
      initialRoute: "/",
      routes: {
        "/": (context) => const PostLandingPage(),
        "/prenatal": (context) => const PreLandingPage(),
        "/postnatal": (context) => const PostLandingPage(),
        "/postnatalreg": (context) => const RegistrationPageP()
      },
    );
  }
}
