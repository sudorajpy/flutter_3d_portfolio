
import 'package:flutter/material.dart';
import 'package:flutter_3d_portfolio/constants/constants.dart';
import 'package:flutter_3d_portfolio/sections/top_section/components/menu.dart';
import 'package:flutter_3d_portfolio/title_section.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class TopSection extends StatefulWidget {
  const TopSection({super.key});

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      // height: 800,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/herobg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Menu(),
          SizedBox(height: 50,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: SectionTitle(title:name, subtile: subtile,),
              ),
            ],
          ),
          // const SizedBox(height: 250,),
          Container(
            height: size.height * 0.5,
            child: ModelViewer(
              
              src: imgTopSectionModel,
              cameraControls: true,
             ar: true,
             disableZoom: true,
             autoRotate: true,
            ),
          ),
          SizedBox(height: 50,)
        ],
      ),
    );
  }
}