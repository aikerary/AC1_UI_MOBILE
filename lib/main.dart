import 'package:flutter/material.dart';

import 'ui/pages/flutter_course_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter course",
      home: FlutterCoursePage(),
    );
  }
}
