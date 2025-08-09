import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Formaciones Complementarias')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          CourseItem(
            title: 'Flutter Avanzado',
            institution: 'Platzi',
            hours: '40 horas',
            year: '2023',
          ),
          CourseItem(
            title: 'Dart Intermedio',
            institution: 'Udemy',
            hours: '30 horas',
            year: '2022',
          ),
          CourseItem(
            title: 'Diseño UI/UX para Apps',
            institution: 'Coursera',
            hours: '50 horas',
            year: '2021',
          ),
          CourseItem(
            title: 'Firebase para Flutter',
            institution: 'Platzi',
            hours: '25 horas',
            year: '2023',
          ),
        ],
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  final String title;
  final String institution;
  final String hours;
  final String year;

  const CourseItem({
    super.key,
    required this.title,
    required this.institution,
    required this.hours,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.business, size: 16),
                const SizedBox(width: 8),
                Text(institution),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.timer, size: 16),
                const SizedBox(width: 8),
                Text('$hours | $year'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
