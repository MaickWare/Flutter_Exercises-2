import 'package:flutter/material.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Experiencia Laboral')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ExperienceItem(
            position: 'Desarrollador Flutter',
            company: 'TechSolutions SAS',
            period: 'Ene 2023 - Presente',
            description:
                'Desarrollo de aplicaciones móviles multiplataforma con Flutter. '
                'Implementación de APIs REST, manejo de estado con Provider y Bloc. '
                'Diseño de interfaces de usuario responsivas.',
          ),
          SizedBox(height: 16),
          ExperienceItem(
            position: 'Practicante Desarrollo',
            company: 'SoftDigital Ltda',
            period: 'Jul 2022 - Dic 2022',
            description:
                'Apoyo en desarrollo de aplicaciones empresariales. '
                'Implementación de features menores y corrección de bugs. '
                'Participación en reuniones de planificación.',
          ),
        ],
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String position;
  final String company;
  final String period;
  final String description;

  const ExperienceItem({
    super.key,
    required this.position,
    required this.company,
    required this.period,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              position,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.business_center, size: 16),
                const SizedBox(width: 8),
                Text(
                  company,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.date_range, size: 16),
                const SizedBox(width: 8),
                Text(period),
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
