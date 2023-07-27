import 'package:flutter/material.dart';
import 'package:flutter_3d_portfolio/sections/top_section/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            Container(
              height: 500,
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}