import 'package:flutter/material.dart';
import '../widget/searchbox.dart';
import '../widget/listitem.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox(
          width: 237,
          height: 45,
          child: Image.asset('assets/images/logo.png'),
        ),
        backgroundColor: const Color(0xff212121),
        elevation: 0,
      ),
      body: Column(
        children: [
          // LIST ITEM BELOW
          Expanded(
            child: ListView.builder(
              itemCount: 10 + 1, // +1 for Header
              itemBuilder: ((context, index) {
                if (index == 0) {
                  return const SearchBox();
                } else {
                  index = index - 1;
                  return const ListItem();
                }
              }),
            ),
          ),
          // LIST ITEM ABOVE
        ],
      ),
    );
  }
}
