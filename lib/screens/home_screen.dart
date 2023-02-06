import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:Padding(
              padding:EdgeInsets.symmetric(horizontal:15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Icon(Icons.shortcut_rounded,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,

                      ),



                    ),
                    InkWell(
                      onTap: (){},
                      child: Icon(Icons.notifications,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,

                      ),



                    ),


                  ],


                ),
                SizedBox(height: 30,),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal:15),
                  child: Text('Its a great day for coffe',style:TextStyle(
                   color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,


                  ),),





                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal:15,vertical:20),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 50, 54, 0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Find Your Coffe',
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(Icons.search, size: 30, color:Colors.white.withOpacity(0.5),),
                    ),
                  ),





                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Hot Coffe',style:TextStyle(color:Colors.white.withOpacity(0.2),fontWeight:FontWeight.bold),),
                        Text('Cold Coffe',style:TextStyle(color:Colors.white.withOpacity(0.2),fontWeight:FontWeight.bold),),
                        Text('Normal Coffe',style:TextStyle(color:Colors.white.withOpacity(0.2),fontWeight:FontWeight.bold)),
                      ],


                    ),
                  ],
                ),
                Column(
                   children: [
                     Image(image: AssetImage('assets/Black Coffee.png')),
                     Text('If you’re asking yourself ‘what is an iced coffee?’, then look no further. Quite simply, an iced coffee is a cold version of your favourite coffee, but it’s not simply a coffee that has been left to cool. Like a regular coffee, it’s usually a combination of hot espresso and milk. However, ice is added too.'
                     , style: TextStyle(fontSize: 15, fontWeight:FontWeight.w500, color:Colors.white.withOpacity(0.5)),
                       textAlign: TextAlign.justify,
                     ),
                   ],
                 ),





  ]






      ),

    )


      )
  );
  }
}
