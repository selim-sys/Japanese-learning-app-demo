import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../components/list_item.dart';
import '../models/item.dart';
class ColorsScreen extends StatelessWidget {
  List<Item> colors =[
    Item(enName: 'Black', image: 'assets/images/colors/color_black.png', jpName: 'Burakku', audio: 'assets/sounds/black.wav'),
    Item(enName: 'Brown', image: 'assets/images/colors/color_brown.png', jpName: 'Chairo', audio: 'assets/sounds/brown.wav'),
    Item(enName: 'Dusty Yellow', image: 'assets/images/colors/color_dusty_yellow.png', jpName: 'Hokori Ppoi Kiiro', audio: 'assets/sounds/dusty yellow.wav'),
    Item(enName: 'Gray', image: 'assets/images/colors/color_gray.png', jpName: 'Gure', audio: 'assets/sounds/gray.wav'),
    Item(enName: 'Green', image: 'assets/images/colors/color_green.png', jpName: 'Midori', audio: 'assets/sounds/green.wav'),
    Item(enName: 'Red', image: 'assets/images/colors/color_red.png', jpName: 'Aka', audio: 'assets/sounds/red.wav'),
    Item(enName: 'White', image: 'assets/images/colors/color_white.png', jpName: 'Shiroi', audio: 'assets/sounds/white.wav'),
    Item(enName: 'Yellow', image: 'assets/images/colors/yellow.png', jpName: 'Kiiro', audio: 'assets/sounds/yellow.wav')

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF0D7),
      appBar: AppBar(
        backgroundColor: HexColor('402D26'),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListItem(itemList: colors[index],color: Color(0xff7D40A2),),
        itemCount: colors.length,
      ),
    );
  }
}
