import 'package:flutter/material.dart';

class ReferencesPage extends StatelessWidget {
  const ReferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Referencias Personales')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ReferenceItem(
            name: 'Juan Pérez',
            position: 'Gerente de Desarrollo',
            company: 'TechSolutions SAS',
            phone: '+57 300 123 4567',
            email: 'juan.perez@techsolutions.com',
          ),
          SizedBox(height: 16),
          ReferenceItem(
            name: 'María Gómez',
            position: 'Líder de Proyectos',
            company: 'SoftDigital Ltda',
            phone: '+57 310 987 6543',
            email: 'maria.gomez@softdigital.com',
          ),
          SizedBox(height: 16),
          ReferenceItem(
            name: 'Carlos Rodríguez',
            position: 'Profesor Universitario',
            company: 'Universidad Tecnológica',
            phone: '+57 315 555 1234',
            email: 'c.rodriguez@untec.edu',
          ),
        ],
      ),
    );
  }
}

class ReferenceItem extends StatelessWidget {
  final String name;
  final String position;
  final String company;
  final String phone;
  final String email;

  const ReferenceItem({
    super.key,
    required this.name,
    required this.position,
    required this.company,
    required this.phone,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('$position en $company'),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.phone, size: 16),
                const SizedBox(width: 8),
                Text(phone),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.email, size: 16),
                const SizedBox(width: 8),
                Text(email),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
