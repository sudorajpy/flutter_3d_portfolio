import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class OverViewCard extends StatefulWidget {
  const OverViewCard({
    super.key,
  });

  @override
  State<OverViewCard> createState() => _OverViewCardState();
}

class _OverViewCardState extends State<OverViewCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Container(
        height: 250,
        width:250,
        decoration: BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: kCardBorderColor, width: 1),
          boxShadow: [
            if(isHover)
            BoxShadow(
              spreadRadius: 2,
              offset: const Offset(0, 0),
              blurRadius: 50,
              color: Colors.green.withOpacity(0.5),
            ),
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/backend.png', height: 100, width: 100,),
            const SizedBox(height: 20),
            Text('Flutter Developer', style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}