import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../components/list_item.dart';
import '../components/phrase_item.dart';
import '../models/item.dart';
import '../models/phrase.dart';
class PhrasesScreen extends StatelessWidget {
List<Phrase> phrases = [
  Phrase(enName: 'Don\'t forget to subscribe', jpName: 'Kōdoku suru koto o wasurenaide \nkudasai', audio: 'assets/sounds/dont_forget_to_subscribe.wav'),
  Phrase(enName: 'I love programming', jpName: 'Watashi wa puroguramingu \nga daisukidesu', audio: 'assets/sounds/i_love_programming.wav'),
  Phrase(enName: 'I love menna', jpName: 'Menna ga daisukidesu', audio: 'assets/sounds/i love menna.mp3'),
  Phrase(enName: 'What\'s your name?', jpName: 'Anata no namae wa nandesuka', audio: 'assets/sounds/what_is_your_name.wav'),
  Phrase(enName: 'Hahahahhahha', jpName: 'Hahahahhahha', audio: 'assets/sounds/hahahaha.mp3'),
  Phrase(enName: 'My dick is mango', jpName: 'Watashi no penisu wa mangōdesu', audio: 'assets/sounds/mango.mp3')
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF0D7),
      appBar: AppBar(
        backgroundColor: HexColor('402D26'),
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => PhraseItem(color: Color(0xff47A5CB),phraseList: phrases[index]),
        itemCount: phrases.length,
      ),
    );
  }
}
