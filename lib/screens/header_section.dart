import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      color: Colors.blueGrey[900],
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("resources/assets/profile.jpeg"),
          ),
          const SizedBox(height: 20),
          Text(
            "Hi, I'm Pavana N R👋",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            "Flutter Developer | Mobile App Enthusiast",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white70,
                ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _launchURL('mailto:your.email@example.com');
                },
                child: const Text('Contact Me'),
              ),
              OutlinedButton(
                onPressed: () {
                  _launchURL('https://github.com/pavana-nr');
                },
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                child: const Text('GitHub'),
              ),
              OutlinedButton(
                onPressed: () {
                  _launchURL('https://www.linkedin.com/in/pavana-nr');
                },
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                child: const Text('LinkedIn'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
