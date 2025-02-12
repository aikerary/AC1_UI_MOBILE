import 'package:flutter/material.dart';

class FlutterCoursePage extends StatelessWidget {
  const FlutterCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      // you may remove this widget if you don't want to use it
      child: Column(
        children: <Widget>[
          buildHeader(),
          buildCourseFocus(),
          buildModules(),
          buildProjectList(),
        ],
      ),
    ));
  }

  Widget buildHeader() {
    return const Text("Flutter course");
  }

  Widget buildCourseFocus() {
    return const Text("Focus on the course");
  }

  Widget buildModules() {
    return const Text("Modules");
  }

  Widget buildProjectList() {
    return const Text("Projects");
  }
}
