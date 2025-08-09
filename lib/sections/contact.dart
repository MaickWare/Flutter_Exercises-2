import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contáctame')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            const SizedBox(height: 24),
            const Text(
              '¿Interesado en trabajar juntos?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text('Contáctame a través de:', textAlign: TextAlign.center),
            const SizedBox(height: 24),
            _buildContactButton(
              context,
              Icons.email,
              'Correo Electrónico',
              'arevalomashua@gmail.com',
            ),
            const SizedBox(height: 16),
            _buildContactButton(
              context,
              Icons.phone,
              'Llamar',
              'tel:+573223324550',
            ),
            const SizedBox(height: 16),
            _buildContactButton(
              context,
              Icons.message,
              'WhatsApp',
              'https://wa.me/573208763498',
            ),
            const SizedBox(height: 16),
            _buildContactButton(
              context,
              Icons.link,
              'GitHub',
              'https://github.com/maickware',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactButton(
    BuildContext context,
    IconData icon,
    String text,
    String url,
  ) {
    return ElevatedButton.icon(
      icon: Icon(icon),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: () async {
        if (await canLaunchUrl(Uri.parse(url))) {
          await launchUrl(Uri.parse(url));
        } else {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('No se pudo abrir $url')));
        }
      },
    );
  }
}
// This code defines a ContactPage widget that allows users to contact the developer via email, phone, WhatsApp, and LinkedIn. It uses the url_launcher package to handle URL launching for each contact method.
// The page includes a profile picture, a title, and buttons for each contact method. Each