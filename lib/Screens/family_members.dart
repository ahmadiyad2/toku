
import 'package:flutter/material.dart';



import '../components/item.dart';
import '../models/number.dart';

class FamilyMember extends StatelessWidget {
  const FamilyMember({super.key});

  final List<Number> numbers = const [

         Number(sound: 'sound/numbers/number_one_sound.mp3'  ,  image: 'assets/image/family_members/family_daughter.png'    ,  jpame: 'ichi'  ,   enName: 'one'  ),
         Number(sound: 'sound/numbers/number_two_sound.mp3'  ,  image: 'assets/image/family_members/family_father.png'    ,  jpame: 'NI'    ,   enName: 'two'  ),
         Number(sound: 'sound/numbers/number_three_sound.mp3',  image: 'assets/image/family_members/family_grandfather.png'  ,  jpame: 'San'   ,   enName: 'three'),
         Number(sound: 'sound/numbers/number_four_sound.mp3' ,  image: 'assets/image/family_members/family_grandmother.png'   ,  jpame: 'Shi'   ,   enName: 'four' ),
         Number(sound: 'sound/numbers/number_five_sound.mp3' ,  image: 'assets/image/family_members/family_mother.png'   ,  jpame: 'Go'    ,   enName: 'five' ),
         Number(sound: 'sound/numbers/number_six_sound.mp3'  ,  image: 'assets/image/family_members/family_older_brother.png'    ,  jpame: 'Rouk'  ,   enName: 'six'  ),
         Number(sound: 'sound/numbers/number_seven_sound.mp3',  image: 'assets/image/family_members/family_older_sister.png'  ,  jpame: 'Sebun' ,   enName: 'seven'),
         Number(sound: 'sound/numbers/number_eight_sound.mp3',  image: 'assets/image/family_members/family_son.png'  ,  jpame: 'ichi'  ,   enName: 'eight'),
         Number(sound: 'sound/numbers/number_nine_sound.mp3' ,  image: 'assets/image/family_members/family_younger_brother.png'   ,  jpame: 'ichi'  ,   enName: 'nine' ),
         Number(sound: 'sound/numbers/number_ten_sound.mp3'  ,  image: 'assets/image/family_members/family_younger_sister.png'    ,  jpame: 'ichi'  ,   enName: 'ten'  ),



         
        ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
         appBar: AppBar(
          title: const Text('FamilyMember 👍 😇 🇵🇸'),
          backgroundColor:const Color.fromARGB(255, 53, 32, 0),
          ),

          
          body : ListView.builder(
           
            itemCount: numbers.length,
            itemBuilder: (context, index) {

              return Item(number: numbers[index] , color: const Color.fromARGB(255, 0, 116, 25),);
            } ,
          )

           );
     



        
         

    
  }
}