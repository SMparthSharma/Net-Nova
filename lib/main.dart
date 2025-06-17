import 'package:flutter/material.dart';
import 'package:my_vpn_netnova/presentation/page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffE5E5E5)),
      ),
      home: const HomePage(),
    );
  }
}
