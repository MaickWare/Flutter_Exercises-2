import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Estudios Realizados')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          EducationCard(
            degree: 'Analisis y Desarrollo de Software',
            institution: 'SENA',
            year: '2023 - 2025',
            description: 'Título obtenido con honores.',
          ),
          SizedBox(height: 16),
          EducationCard(
            degree: 'Bachiller Técnico',
            institution: 'Colegio Técnico Industrial',
            year: '2015 - 2020',
            description:
                'Bachiller técnico con énfasis en programación de software.',
          ),
        ],
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  final String degree;
  final String institution;
  final String year;
  final String description;

  const EducationCard({
    super.key,
    required this.degree,
    required this.institution,
    required this.year,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ), // <-- cierra correctamente RoundedRectangleBorder
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              degree,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.school, size: 16),
                const SizedBox(width: 8),
                Text(institution),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 16),
                const SizedBox(width: 8),
                Text(year),
              ],
            ),
            const SizedBox(height: 12),
            Text(description),
          ],
        ),
      ),
    );
  }
}
