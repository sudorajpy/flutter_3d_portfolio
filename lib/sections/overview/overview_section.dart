import 'package:flutter/material.dart';
import 'package:flutter_3d_portfolio/constants/constants.dart';


import '../../components/section_title.dart';
import 'components/overview_card.dart';

class OverViewSection extends StatefulWidget {
  const OverViewSection({super.key});

  @override
  State<OverViewSection> createState() => _OverViewSectionState();
}

class _OverViewSectionState extends State<OverViewSection> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1100),
      
      height: 800,
      decoration: BoxDecoration(color: kBgColor,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(),
          const SizedBox(height: 30),
          SizedBox(
            width: 500,
            child: Text(aboutText, style: const TextStyle(color: Colors.white, fontSize: 16),),),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (index) => const OverViewCard()),
          ),
          
         
        ],
      ),
      );
  }
}



