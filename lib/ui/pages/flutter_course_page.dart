import 'package:flutter/material.dart';

class FlutterCoursePage extends StatelessWidget {
  const FlutterCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          buildHeader(),
          buildCourseFocus(),
          const Divider(),
          buildModules(),
          const Divider(),
          Expanded(child: buildProjectList()),
        ],
      ),
    ));
  }

  Widget buildHeader() {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 10, 87, 186),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Flutter Course",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                "2015-10",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(8.0),
                child: const Icon(Icons.search, color: Colors.white),
              ),
              const SizedBox(width: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(8.0),
                child: const Icon(Icons.notifications, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCourseFocus() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Course Focus",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Container(
                    color: Colors.blue,
                    height: 5,
                  ),
                  Text("UI dev")
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Container(
                    color: Colors.green,
                    height: 5,
                  ),
                  Text("Architecture")
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Container(
                    color: Colors.red,
                    height: 5,
                  ),
                  Text("Design")
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Container(
                    color: Colors.yellow,
                    height: 5,
                  ),
                  Text("Testing")
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }

  Widget buildModules() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Modules",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  ModuleIconItem(
                    icon: Icons.book,
                    label: "Introduction",
                    iconColor: Colors.blue,
                  ),
                  const SizedBox(width: 24),
                  ModuleIconItem(
                    icon: Icons.design_services,
                    label: "UX Design",
                    iconColor: Colors.green,
                  ),
                  const SizedBox(width: 24),
                  ModuleIconItem(
                    icon: Icons.storage,
                    label: "State Management",
                    iconColor: Colors.orange,
                  ),
                  const SizedBox(width: 24),
                  ModuleIconItem(
                    icon: Icons.bug_report,
                    label: "Testing",
                    iconColor: Colors.red,
                  ),
                  const SizedBox(width: 24),
                  ModuleIconItem(
                    icon: Icons.network_check,
                    label: "Networks",
                    iconColor: Colors.purple,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProjectList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Projects",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ProjectItem(
                icon: Icons.folder,
                title: "Project ${index + 1}",
                subtitle: "Description for project ${index + 1}",
              );
            },
          ),
        ),
      ],
    );
  }
}

class FocusItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const FocusItem({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 32),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}

class ModuleItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ModuleItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 24),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(subtitle, style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ProjectItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Row(
          children: [
            Icon(icon, size: 24, color: Colors.grey[600]),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Icon(Icons.more_vert_rounded, color: Colors.grey[600]),
          ],
        ),
      ),
    );
  }
}

class ModuleIconItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;

  const ModuleIconItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, size: 40, color: iconColor),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
