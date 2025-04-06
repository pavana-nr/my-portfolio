import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  
  final List<Map<String, String>> projects = [
    {
      'title': 'Todo App',
      'description': 'A simple Flutter Todo app',
      'url': 'https://github.com/yourname/todo-app'
    },
    {
      'title': 'Weather App',
      'description': 'Weather forecast using OpenWeatherMap API',
      'url': 'https://github.com/yourname/weather-app'
    },
  ];

   ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: projects.map((project) => ListTile(
        title: Text(project['title']!),
        subtitle: Text(project['description']!),
        trailing: const Icon(Icons.link),
        // ignore: deprecated_member_use
        onTap: () => launch(project['url']!),
      )).toList(),
    );
  }
}
