import 'package:flutter/material.dart';
import 'package:tip_app/page/tips.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: 'Tips App',
        debugShowCheckedModeBanner: false,
        home: Tips(),
      );
}
