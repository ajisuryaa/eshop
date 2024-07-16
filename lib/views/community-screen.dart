import 'package:flutter/material.dart';

class CommunityScreen extends StatefulWidget {
  final String titlePage;

  const CommunityScreen({Key? key, required this.titlePage}) : super(key: key);

  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
