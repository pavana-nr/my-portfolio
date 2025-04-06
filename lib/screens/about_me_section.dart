import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '👨‍💻 About Me',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 20),
          const Text(
            "I'm a passionate Flutter developer with experience in building high-quality, cross-platform mobile apps. I love clean code, elegant UIs, and performance optimization. "
            "In the past few years, I’ve built apps using Flutter, Firebase, and REST APIs. I also contribute to open-source and enjoy mentoring developers.",
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  // Add resume download or navigation logic here
                },
                icon: const Icon(Icons.download),
                label: const Text('Download Resume'),
              ),
              const SizedBox(width: 16),
              OutlinedButton.icon(
                onPressed: () {
                  // Link to LinkedIn or GitHub
                },
                icon: const Icon(Icons.link),
                label: const Text('Visit GitHub'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
