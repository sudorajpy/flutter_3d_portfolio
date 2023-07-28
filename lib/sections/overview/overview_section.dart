import 'package:flutter/material.dart';
import 'package:flutter_3d_portfolio/constants/constants.dart';

class OverViewSection extends StatefulWidget {
  const OverViewSection({super.key});

  @override
  State<OverViewSection> createState() => _OverViewSectionState();
}

class _OverViewSectionState extends State<OverViewSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1100),
      
      height: 800,
      decoration: BoxDecoration(color: kBgColor,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(),
          const SizedBox(height: 30),
          Container(
            width: 500,
            child: Text(aboutText, style: TextStyle(color: Colors.white, fontSize: 16),),),
          const SizedBox(height: 30),
          Container(
            height: 250,
            width:250,
            decoration: BoxDecoration(
              color: kCardColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kCardBorderColor, width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/backend.png', height: 100, width: 100,),
                const SizedBox(height: 20),
                Text('Flutter Developer', style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),),
              ],
            ),
          )
        ],
      ),
      );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // align text to the left
        children: [
          Text('Introduction', style: TextStyle(color:kTextColor, fontSize: 28)),
          const SizedBox(height: 10),
          Text('Overview', style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 70),),
        ],
      ),
    );
  }
}