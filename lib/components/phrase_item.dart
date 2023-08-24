import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import '../models/phrase.dart';

class PhraseItem extends StatelessWidget {
  AssetsAudioPlayer player = AssetsAudioPlayer();
  PhraseItem({required this.phraseList,required this.color});
  final Phrase phraseList;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          SizedBox(width: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(phraseList.jpName,
                style:
                TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),),
              Text(
                phraseList.enName,
                style:
                TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              )
            ],
          ),
          Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
                onPressed: (){
                  player.open(
                    Audio(phraseList.audio),
                  );
                }, icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            )),
          )
        ],
      ),
    );
  }
}
