

import 'package:flutter/material.dart';


import '../components/item.dart';
import '../models/number.dart';

class NumbersPage extends StatelessWidget {
   const NumbersPage({super.key});
   

      final List<Number> numbers = const [
         Number(sound: 'sound/numbers/number_one_sound.mp3'  ,  image: 'assets/image/number/number_one.png'    ,  jpame: 'ichi'  ,   enName: 'one'  ),
         Number(sound: 'sound/numbers/number_two_sound.mp3'  ,  image: 'assets/image/number/number_two.png'    ,  jpame: 'NI'    ,   enName: 'two'  ),
         Number(sound: 'sound/numbers/number_three_sound.mp3',  image: 'assets/image/number/number_three.png'  ,  jpame: 'San'   ,   enName: 'three'),
         Number(sound: 'sound/numbers/number_four_sound.mp3' ,  image: 'assets/image/number/number_four.png'   ,  jpame: 'Shi'   ,   enName: 'four' ),
         Number(sound: 'sound/numbers/number_five_sound.mp3' ,  image: 'assets/image/number/number_five.png'   ,  jpame: 'Go'    ,   enName: 'five' ),
         Number(sound: 'sound/numbers/number_six_sound.mp3'  ,  image: 'assets/image/number/number_six.png'    ,  jpame: 'Rouk'  ,   enName: 'six'  ),
         Number(sound: 'sound/numbers/number_seven_sound.mp3',  image: 'assets/image/number/number_seven.png'  ,  jpame: 'Sebun' ,   enName: 'seven'),
         Number(sound: 'sound/numbers/number_eight_sound.mp3',  image: 'assets/image/number/number_eight.png'  ,  jpame: 'ichi'  ,   enName: 'eight'),
         Number(sound: 'sound/numbers/number_nine_sound.mp3' ,  image: 'assets/image/number/number_nine.png'   ,  jpame: 'ichi'  ,   enName: 'nine' ),
         Number(sound: 'sound/numbers/number_ten_sound.mp3'  ,  image: 'assets/image/number/number_ten.png'    ,  jpame: 'ichi'  ,   enName: 'ten'  ),


        ] ;
     
  @override
  Widget build(BuildContext context) {
    return Scaffold(

         appBar: AppBar(
         title:const Text('Numbers'),
         backgroundColor:const Color.fromARGB(255, 121, 82, 35),
         


       ),

          body: ListView.builder(
             itemCount: numbers.length,
             itemBuilder:(context , number){
               return Item(number: numbers[number] , color:const Color.fromARGB(225, 209, 125, 0),) ;
             } ,
               
          ),
    );
  }

    /* List<Widget> getList(List<Number> numbers) {
     List<Widget> itemList = [] ;
     for(int i = 0  ; i < numbers.length ; i++ ){
      itemList.add(Item(number: numbers[i]));

     }
     return  itemList ;

     }*/

}



