import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toku/components/list_item.dart';
import '../models/item.dart';

class FamilyMembers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Item> familyMembers =[
      Item(
        enName: 'Father',
        image: 'assets/images/family_members/family_father.png',
        audio: 'assets/sounds/father.wav',
        jpName: 'Chichioya',
      ),
      Item(
        enName: 'Daughter',
        image: 'assets/images/family_members/family_daughter.png',
        audio: 'assets/sounds/daughter.mp3',
        jpName: 'Musume',
      ),
      Item(
        enName: 'Grand Father',
        image: 'assets/images/family_members/family_grandfather.png',
        audio: 'assets/sounds/grand father.wav',
        jpName: 'Ojisan',
      ),
      Item(
        enName: 'Mother',
        image: 'assets/images/family_members/family_mother.png',
        audio: 'assets/sounds/mother.wav',
        jpName: 'Hahaoya',
      ),
      Item(
        enName: 'Grand Mother',
        image: 'assets/images/family_members/family_grandmother.png',
        audio: 'assets/sounds/grand mother.wav',
        jpName: 'Sobo',
      ),
      Item(
        enName: 'Older Brother',
        image: 'assets/images/family_members/family_older_brother.png',
        audio: 'assets/sounds/older bother.wav',
        jpName: 'Nisan',
      ),
      Item(
        enName: 'Older Sister',
        image: 'assets/images/family_members/family_older_sister.png',
        audio: 'assets/sounds/older sister.wav',
        jpName: 'Ane',
      ),
      Item(
        enName: 'Son',
        image: 'assets/images/family_members/family_son.png',
        audio: 'assets/sounds/son.wav',
        jpName: 'Musouko',
      ),
      Item(
        enName: 'Younger Brother',
        image: 'assets/images/family_members/family_younger_brother.png',
        audio: 'assets/sounds/younger brohter.wav',
        jpName: 'Otōto',
      ),
      Item(
        enName: 'Younger Sister',
        image: 'assets/images/family_members/family_younger_sister.png',
        audio: 'assets/sounds/younger sister.wav',
        jpName: 'Imōto',
      ),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffFBF0D7),
      appBar: AppBar(
        backgroundColor: HexColor('402D26'),
        title: Text('Family Members'),),
      body: ListView.builder(
        itemBuilder: (context, index) => ListItem(color: Color(0xff527F31),itemList: familyMembers[index]),
        itemCount: familyMembers.length,
      ),
    );
  }
}

