import 'package:flutter/material.dart';
import 'package:whatsapp/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),

     // ThemeData(
      //   scaffoldBackgroundColor: Colors.white,
      //   appBarTheme: const AppBarTheme(
      //     backgroundColor: Colors.white )
      // ),
      home: const MainPage(),
    );
  }
}

