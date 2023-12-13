import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_diseno/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'homeScreen',
      routes: {
        'firstDesing': (context) => const FirstDesingScreen(),
        'scrollScreen': (context) => const ScrollScreen(),
        'homeScreen': (context) => const HomeScreen()
      },
    );
  }
}
