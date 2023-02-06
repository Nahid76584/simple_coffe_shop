import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
          color:  Colors.black,
          image: DecorationImage(image:AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
            opacity: 0.6,

          ),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Coffe Shop',style: GoogleFonts.pacifico(
              fontSize: 50,
              color: Colors.white,
            ),),
            Column(
              children: [
                Text('Feeling Low? Take a sip of coffe',style:TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,

                ),),
                SizedBox(height: 80,),
                InkWell(
                  splashColor: Colors.black,
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HomePage()));


                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal:30, vertical:15),
                    decoration: BoxDecoration(
                      color: Color(0xffE57734),
                      borderRadius: BorderRadius.circular(10),
                      


                    ),
                    child: Text('Get Started',style:TextStyle(color:Colors.white,
                    fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),),
                  ),


                ),



              ],
            ),

          ],
        ),




      ),


    );
  }
}

