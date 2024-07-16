import 'package:eshop/views/main-page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eShop',
      theme: ThemeData(
          primaryColor: Colors.white,
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black54),
            color: Color(0xFF5D5FEF), //<-- SEE HERE
          )),
      home: const MainPageView(),
    );
  }
}
