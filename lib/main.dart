import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/tool.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Archive AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xff004F3A),
          onPrimary: Colors.white,
          secondary: Color(0xff4F4F4F),
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Color(0xff111111),
          onBackground: Color(0xff212121),
          surface: Color(0xff4F4F4F),
          onSurface: Colors.white,
        ),
      ),
      routes: {
        '/': (context) => const HomePageWidget(),
        '/tool': (context) => const ToolInfo(),
      },
    );
  }
}
