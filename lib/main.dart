import 'package:eshop/views/dashboard.dart';
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
        primaryColor: Colors.white, // Atur warna putih sebagai warna utama tema
        // Tambahan konfigurasi tema lainnya
      ),
      home: const Dashboard(),
    );
  }
}
