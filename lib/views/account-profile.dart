import 'package:flutter/material.dart';

class AccountProfile extends StatefulWidget {
  final String title;
  final String subtitle;

  const AccountProfile({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  _AccountProfileState createState() => _AccountProfileState();
}

class _AccountProfileState extends State<AccountProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.grey,
        title: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 10,
                  fontFamily: "Roboto",
                  color: Color(0xFF868686),
                ),
              ),
              Text(
                widget.subtitle,
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: "Roboto",
                    color: Color(0xFF1D1D1D),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(widget.title,
            style: const TextStyle(
                fontFamily: "NotoSansKR",
                fontWeight: FontWeight.bold,
                fontSize: 18)),
      ),
    );
  }
}
