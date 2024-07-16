import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  final String titlePage;

  const CategoryScreen({Key? key, required this.titlePage}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.grey,
        title: Text(
          widget.titlePage,
          style: const TextStyle(
              fontSize: 24,
              fontFamily: "Roboto",
              color: Color(0xFF5D5FEF),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text(widget.titlePage,
            style: const TextStyle(
                fontFamily: "NotoSansKR",
                fontWeight: FontWeight.bold,
                fontSize: 18)),
      ),
    );
  }
}
