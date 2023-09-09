import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number , required this.color});
  final Number number;
  final Color color ;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            
            child: Container(
                color: Color.fromARGB(255, 247, 238, 214),
                child: Image.asset(number.image)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(number.jpame,
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              Text(number.enName,
                  style: TextStyle(color: Colors.black, fontSize: 18)),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
               try{
                final player = AudioPlayer();
               player.play(AssetSource(number.sound));
               }catch(ex){
                 print('Erorr in the Sound') ;
               }
              
            
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
