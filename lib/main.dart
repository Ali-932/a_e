import 'package:a_e/utils/AppBinding.dart';
import 'package:a_e/utils/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MooCatapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        fontFamily: GoogleFonts.notoSansArabic().fontFamily,
      ),
      home: Navbar(),
    );
  }
}
