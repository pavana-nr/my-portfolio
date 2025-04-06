import 'package:flutter/material.dart';
import 'package:portpolio/screens/about_me_section.dart';
import 'package:portpolio/screens/contact_section.dart';
import 'package:portpolio/screens/header_section.dart';
import 'package:portpolio/screens/project_section.dart';
import 'package:portpolio/screens/skills_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(title: const Text('My Portfolio')),
  body: ListView(
    children: [
      const HeaderSection(),
      const AboutMeSection(),
      const SkillsSection(),
      ProjectsSection(),
      const ContactSection(),
    ],
  ),
);

  }
}