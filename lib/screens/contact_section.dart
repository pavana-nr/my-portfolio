import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  void _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'nr.paavana@gmail.com',
      query: 'subject=Let\'s Connect!',
    );
    await launchUrl(emailLaunchUri);
  }

  void _launchPhone() async {
    final Uri phoneLaunchUri = Uri(
      scheme: 'tel',
      path: '+919886689644',
    );
    await launchUrl(phoneLaunchUri);
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: Colors.blueGrey[50],
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '📬 Contact Me',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Let's build something awesome together! Reach out via email or connect with me on LinkedIn/GitHub.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: _launchEmail,
                icon: const Icon(Icons.email),
                label: const Text('Email'),
              ),
              OutlinedButton.icon(
                onPressed: _launchPhone,
                icon: const Icon(Icons.phone),
                label: const Text('Call'),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  _launchURL('https://github.com/pavana-nr');
                },
                icon: const Icon(Icons.code),
                label: const Text('GitHub'),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  _launchURL('https://linkedin.com/in/pavana-nr');
                },
                icon: const Icon(Icons.person),
                label: const Text('LinkedIn'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
