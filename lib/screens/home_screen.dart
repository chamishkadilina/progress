import 'package:flutter/material.dart';
import 'package:progress/components/project_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Project',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          children: [
            // project 1
            ProjectContainer(
              backgroundColor: Color(0xFFECF2FF),
              icon: Icons.mobile_friendly_rounded,
              projectTitle: 'App development',
              date: 'Nov 02, 2024 - Des 01, 2024',
              progressBarIndicatorValue: '48%',
              projectPercentageValue: 0.48,
            ),
            SizedBox(height: 8),

            // project 2
            ProjectContainer(
              backgroundColor: Color(0xFFFEEDFF),
              icon: Icons.car_rental,
              projectTitle: 'Vehicle sales',
              date: 'Mar 01, 2025 - Aug 01, 2025',
              progressBarIndicatorValue: '12%',
              projectPercentageValue: 0.12,
            ),
            SizedBox(height: 8),

            // project 3
            ProjectContainer(
              backgroundColor: Color(0xFFECF2FF),
              icon: Icons.design_services,
              projectTitle: 'Publish 500 designs',
              date: 'Jan 01, 2025 - Sep 01, 2025',
              progressBarIndicatorValue: '20%',
              projectPercentageValue: 0.20,
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
