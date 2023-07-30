import 'package:flutter/material.dart';


class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
 
  List<String> menuItems = [
    'Home',
    'About',
    'Services',
    'Portfolio',
    'Testimonials',
    'Contact',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width:double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: List.generate(
                menuItems.length,
                (index) =>
                    TextButton(onPressed: () {}, child: Text(menuItems[index],style: const TextStyle(color: Colors.white),)))
            .toList(),
      ),
    );
  }
}

