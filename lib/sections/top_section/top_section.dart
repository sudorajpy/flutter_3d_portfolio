
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 800,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/herobg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 400,
            width:700,
            child: ModelViewer(src: 'assets/models/gaming_desktop.glb'),
            // child: 
            // BabylonJSViewer(src: 'assets/models/gaming_desktop.glb'),
          )
        ],
      ),
    );
  }
}