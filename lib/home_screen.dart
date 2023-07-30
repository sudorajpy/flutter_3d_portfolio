import 'package:flutter/material.dart';
import 'package:flutter_3d_portfolio/constants/constants.dart';
import 'package:flutter_3d_portfolio/sections/overview/overview_section.dart';
import 'package:flutter_3d_portfolio/sections/top_section/top_section.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopSection(),
            // Divider(),
            const OverViewSection(),
//             ScrollToReveal.withAnimation(
//     label: 'Scroll$index',
//     scrollController: _controller,
//     reflectPosition: -100,
//     animationType: AnimationType.findInLeft,
//     child: const FlexCard(),
// );
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