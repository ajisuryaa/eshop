import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        // Add padding around the search bar
        padding: const EdgeInsets.symmetric(horizontal: 0.5),
        // Use a Material design search bar
        child: TextField(
          controller: widget.controller,
          onChanged: widget.onChange,
          decoration: InputDecoration(
            hintText: '검색어를 입력하세요',
            // Add a clear button to the search bar
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: widget.onClear,
            ),
            // Add a search icon or button to the search bar
            prefixIcon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Perform the search here
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
