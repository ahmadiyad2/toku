


import 'package:flutter/material.dart';
import 'package:toku/Screens/family_members.dart';

import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toku'),
        backgroundColor: const Color.fromARGB(255, 156, 84, 2),
      ),
      body: Column(
        children: [
              Category(
              text:'Number' , 
              color: Colors.amber[700] ,
               onTap: (){

                   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){

                      return const NumbersPage();
                      

                   })) ;

              }),

              Category(text:'Famile Numbers' ,
              color:  const Color.fromARGB(255, 21, 124, 0) ,
              onTap: (){
                   Navigator.push(context , MaterialPageRoute(builder: (BuildContext context) {

                     return FamilyMember();

                   })) ;
                  
                    
                   }
                    ),
              Category(text:'Colors' ,color:const Color.fromARGB(255, 132, 56, 255),
               onTap: (){

                  

              }),
              Category(text:'Phrases' ,color:const Color.fromARGB(255, 71, 178, 250),
               onTap: (){

                  

              }),

         
        ],
      ),
    );
  }
}





class Category extends StatelessWidget {
   Category({this.text , this.color , this.onTap});

     String? text ;
     Color? color ;
     Function()? onTap ;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap ,

      child: Container(
              padding:  EdgeInsets.only(left: 16),
              alignment: Alignment.centerLeft,
              margin:  EdgeInsets.only(top: 16 , left: 16 , right: 16),
              color: color,
              height: 60,
              width: double.infinity,
              child: Text(
                text!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
    );
  }
}

