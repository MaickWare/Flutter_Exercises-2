import 'package:flutter/material.dart';
import 'sections/profile.dart';
import 'sections/education.dart';
import 'sections/courses.dart';
import 'sections/experience.dart';
import 'sections/references.dart';
import 'sections/contact.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi Hoja de Vida'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildMenuButton(
              context,
              Icons.person,
              'Perfil Profesional',
              const ProfilePage(),
            ),
            _buildMenuButton(
              context,
              Icons.school,
              'Estudios Realizados',
              const EducationPage(),
            ),
            _buildMenuButton(
              context,
              Icons.workspace_premium,
              'Formaciones',
              const CoursesPage(),
            ),
            _buildMenuButton(
              context,
              Icons.work,
              'Experiencia',
              const ExperiencePage(),
            ),
            _buildMenuButton(
              context,
              Icons.people,
              'Referencias',
              const ReferencesPage(),
            ),
            _buildMenuButton(
              context,
              Icons.contact_mail,
              'Contáctame',
              const ContactPage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(
    BuildContext context,
    IconData icon,
    String text,
    Widget page,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue[50],
        foregroundColor: Colors.blue[800],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40),
          const SizedBox(height: 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
