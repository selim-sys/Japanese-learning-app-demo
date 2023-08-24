import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toku/components/list_item.dart';
import '../models/item.dart';
class Numbers extends StatelessWidget {

  final List<Item> numbers = [
    Item(enName: 'One', image: 'assets/images/numbers/number_one.png', jpName: 'Ichi',audio: 'assets/sounds/number_one_sound.mp3'),
    Item(enName: 'Two', image: 'assets/images/numbers/number_two.png', jpName: 'Ni',audio: 'assets/sounds/number_two_sound.mp3'),
    Item(enName: 'Three', image: 'assets/images/numbers/number_three.png', jpName: 'San',audio: 'assets/sounds/number_three_sound.mp3'),
    Item(enName: 'Four', image: 'assets/images/numbers/number_four.png', jpName: 'Shi',audio: 'assets/sounds/number_four_sound.mp3'),
    Item(enName: 'Five', image: 'assets/images/numbers/number_five.png', jpName: 'Go',audio: 'assets/sounds/number_five_sound.mp3'),
    Item(enName: 'Six', image: 'assets/images/numbers/number_six.png', jpName: 'Roku',audio: 'assets/sounds/number_six_sound.mp3'),
    Item(enName: 'Seven', image: 'assets/images/numbers/number_seven.png', jpName: 'Sebun',audio: 'assets/sounds/number_seven_sound.mp3'),
    Item(enName: 'Eight', image: 'assets/images/numbers/number_eight.png', jpName: 'Hachi',audio: 'assets/sounds/number_eight_sound.mp3'),
    Item(enName: 'Nine', image: 'assets/images/numbers/number_nine.png', jpName: 'Ku',audio: 'assets/sounds/number_nine_sound.mp3'),
    Item(enName: 'Ten', image: 'assets/images/numbers/number_ten.png', jpName: 'Juu',audio: 'assets/sounds/number_ten_sound.mp3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF0D7),
      appBar: AppBar(
        backgroundColor: HexColor('402D26'),
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
      itemBuilder: (context, index) => ListItem(itemList: numbers[index],color: Color(0xffEF9235),),
        itemCount: numbers.length,
      ),
    );
  }
}
