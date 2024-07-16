import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class SearchBarCustom extends StatefulWidget {
  final TextEditingController controller;
  final Function(String) onChange;
  final VoidCallback onClear;
  const SearchBarCustom(
      {super.key,
      required this.controller,
      required this.onChange,
      required this.onClear});

  @override
  State<SearchBarCustom> createState() => _SearchBarCustomState();
}

class _SearchBarCustomState extends State<SearchBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: const GradientBoxBorder(
            gradient:
                LinearGradient(colors: [Color(0xFF74FBDE), Color(0xFF3C41BF)]),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20.0)),
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChange,
        decoration: InputDecoration(
          hintText: '검색어를 입력하세요',
          hintStyle: TextStyle(fontSize: 12),
          // Add a clear button to the search bar
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.search,
              color: Color(0xFF3C41BF),
            ),
            onPressed: widget.onClear,
          ),
          contentPadding: const EdgeInsets.fromLTRB(15, 10, 6, 10),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
