import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class ListItem extends StatelessWidget {
  AssetsAudioPlayer player = AssetsAudioPlayer();
  ListItem({required this.itemList,required this.color});
  final Item itemList;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
              color: Color(0xffFFEED2),
              child: Image.asset(itemList.image)),
          SizedBox(width: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemList.jpName,
                style:
                TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),),
              Text(
                  itemList.enName,
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
                    Audio(itemList.audio),
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
