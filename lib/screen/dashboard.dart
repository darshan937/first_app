import 'package:flutter/material.dart';
import 'package:second_app/screen/area_of_circle_screen.dart';
import 'package:second_app/screen/arithmetic_screen.dart';
import 'package:second_app/screen/column_screen.dart';
import 'package:second_app/screen/layout_screen.dart';
import 'package:second_app/screen/simple_interest.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(height: 8),

            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ArithmeticScreen()));
                },
                child: const Text(
                  'Arithmetic Screen.',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Button 2
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SimpleInterest()));
                },
                child: const Text(
                  'Simple Interest.',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Button 3
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AreaOfCircleScreen()));
                },
                child: const Text(
                  'Area of a Circle.',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            // Button 4
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ColumnScreen()));
                },
                child: const Text(
                  'Column',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            // Button 5
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LayoutScreen()));
                },
                child: const Text(
                  'Layout',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
