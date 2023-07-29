import 'package:flutter/material.dart';

import '../constants/constants.dart';

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