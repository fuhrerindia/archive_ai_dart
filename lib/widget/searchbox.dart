import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(color: Color(0xff4F4F4F)),
      child: const Center(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.clear),
            prefixIconColor: Colors.white,
            suffixIconColor: Colors.white,
            hintText: "Type a keyword for AI tool",
            hintStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
