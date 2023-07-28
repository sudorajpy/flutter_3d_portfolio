import 'package:flutter/material.dart';
import 'package:flutter_3d_portfolio/constants/constants.dart';
import 'package:flutter_3d_portfolio/sections/overview/overview_section.dart';
import 'package:flutter_3d_portfolio/sections/top_section/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            OverViewSection(),
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