import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/family_members.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_screen.dart';
import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF0D7),
      appBar: AppBar(
        backgroundColor: HexColor('402D26'),
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category('Numbers', const Color(0xffF59431), () {
            Navigator.push(
                context,
                (MaterialPageRoute(
                  builder: (context) => Numbers(),
                )));
          }),
          Category('Family Members', const Color(0xff527F31), () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FamilyMembers(),
                ));
          }),
          Category('Colors', const Color(0xff7D40A2), () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ColorsScreen(),
                ));
          }),
          Category('Phrases', const Color(0xff47A5CB), () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhrasesScreen(),
                ));
          }),
        ],
      ),
    );
  }
}
