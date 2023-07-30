import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constants/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    required this.subtile,
  });
  final String title, subtile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#9160fc'),
                  )),
              Container(
                width: 4,
                height: 200,
                color: HexColor('#9160fc'),
              ),
            ],
          ),
          const SizedBox(width: kDefaultPadding),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: kDefaultPadding,
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Hi, I'm ",
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 220, 211, 211),
                              ),
                    ),
                    TextSpan(
                      text: title,
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: HexColor('#9160fc'),
                              ),
                    ),
                  ],
                ),
              ),
              Text(
                subtile,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: const Color.fromARGB(255, 220, 211, 211),
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
