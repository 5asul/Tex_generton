
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Explore.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}
var x=Color(0xFF545454);
var z=Color(0xFF545454);
var c=Color(0xFF545454);
/////
var org=Color(0xFF545454);
////
var a=Color(0xFFB03CFC);
var b=Color(0xFFB03CFC);
var d=Color(0xFFB03CFC);




class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      
        child:
        Scaffold(
          
          bottomNavigationBar: BottomAppBar(

          height: 108,

          child: Container(width: double.infinity,
            child: Row(

              // mainAxisAlignment: MainAxisAlignment.center,

              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Container(
                  width: 50,

                  child: Column(

                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: IconButton(onPressed: (){
                          setState(() {
                            if(x==Color(0xFF545454)){
                              x=Color(0xFFB03CFC);
                              z=Color(0xFF545454);
                              c=Color(0xFF545454);
                            }
                            // x=a;
                            // b=z;
                          });
                        }, icon: Icon(Icons.mark_unread_chat_alt,color:x,size: 30,)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("Chat",style: TextStyle(color: x,fontSize: 17,fontWeight: FontWeight.bold),),
                      )

                      // IconButton(onPressed: (){}, icon: Icon(Icons.chat,color:Color(0xFFB03CFC),size: 30,)),
                      // Spacer(flex: 1,),



                    ],
                  ),
                ),
                SizedBox(width: 25,),
                // Padding(
                //   padding: const EdgeInsets.only(left: 11,bottom: 16),
                //   child: Text("Chat"),
                // ),
                Container(
                  width: 220,
                  // margin: EdgeInsets.only(right: 1,bottom: 1),
                  // padding: EdgeInsets.only(right: 8),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                    // Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: IconButton(onPressed: (){
                        setState(() {
                          if(z==Color(0xFF545454)){
                            z=Color(0xFFB03CFC);
                            x=Color(0xFF545454);
                            c=Color(0xFF545454);
                          }
                        });
                      }, icon: Icon(Icons.explore_rounded,color:z,size: 30,)),
                    ),
                    Text("Explore",style: TextStyle(color: z,fontSize: 17,fontWeight: FontWeight.bold),)

                  ],),
                ),


                // Container(
                //   width: 39,
                //   // margin: EdgeInsets.only(right: 1),
                //
                //   child: Column(
                //
                //     // crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //
                //       // Spacer(),
                //       Padding(
                //         padding: const EdgeInsets.only(left: 0.0,right: 0,top: 6.0,bottom: 6.0),
                //         child: IconButton(onPressed: (){
                //           setState(() {
                //             if(c==Color(0xFF545454))
                //             {
                //               x=Color(0xFF545454);
                //               z=Color(0xFF545454);
                //               c=Color(0xFFB03CFC);
                //
                //             }
                //             // x=a;
                //             // b=z;
                //           });
                //         }, icon: Icon(Icons.history,color:c,size: 30,)),
                //       ),
                //       SizedBox(height: 7,),
                //
                //       Container(margin: EdgeInsets.only(bottom: 0,right: 18),child: Text("History",style: TextStyle(color: c,fontSize: 17,fontWeight: FontWeight.bold),))
                //
                //       // IconButton(onPressed: (){}, icon: Icon(Icons.chat,color:Color(0xFFB03CFC),size: 30,)),
                //       // Spacer(flex: 1,),
                //
                //
                //
                //     ],
                //   ),
                // ),

                Container(
                  width: 80,

                  child: Column(

                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.5,top: 6,right: 6,bottom: 6),
                        child: IconButton(onPressed: (){
                          setState(() {
                            if(c==Color(0xFF545454))
                            {
                              x=Color(0xFF545454);
                              z=Color(0xFF545454);
                              c=Color(0xFFB03CFC);

                            }
                            // x=a;
                            // b=z;
                          });
                        }, icon: Icon(Icons.history,color:c,size: 30,)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("History",style: TextStyle(color: c,fontSize: 17,fontWeight: FontWeight.bold),),
                      )

                      // IconButton(onPressed: (){}, icon: Icon(Icons.chat,color:Color(0xFFB03CFC),size: 30,)),
                      // Spacer(flex: 1,),



                    ],
                  ),
                ),
                Spacer()
              ],
            ),
          ),
        ),
          body: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [Padding(
            padding: const EdgeInsets.only(top: 30,bottom: 8,right: 8,left: 38),
            child: Text('SETTINGS',style: TextStyle(color: Color(0xFF707070),fontSize: 18),),
          ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFF000000),
              ),
              padding: EdgeInsets.symmetric(vertical: 6),
              margin: EdgeInsets.only( bottom: 1.5, left: 16, right: 16),
              width: 364,
              height: 69,
              child: Row(
                children:[ Padding(
                  padding: const EdgeInsets.only(top: 6.0,bottom: 6,right: 6,left: 17),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Explpre()));},
                    child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            begin: Alignment(-1, -1),
                            end: Alignment(-1, 1),
                            colors: [
                              Color(0xFF1F1F1F),
                              Color(0xFF696969),

                            ],
                          ),
                        ),
                        // transform: Matrix4.translationValues(0, 48, 0),
                        width: 50.11,
                        height: 50.11,
                        child: IconButton(onPressed: (){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> Explpre()));},icon: Icon(Icons.g_translate,color: Color(0xFFB03CFC),size: 30,),)
                    ),
                  ),
                ),
                  TextButton(style:TextButton.styleFrom(backgroundColor: Colors.black,maximumSize: Size(900.0, 500.0)) ,onPressed: (){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> Explpre()));}, child:  Text("Language",style: TextStyle(fontSize: 17,color: Colors.white),)),
                  Spacer(),
                  IconButton(onPressed: (){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> Explpre()));}, icon: Icon(Icons.start,color:  Color(0xFF707070),size: 38,))
              ]),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFF000000),
              ),
              padding: EdgeInsets.symmetric(vertical: 6),
              margin: EdgeInsets.only( bottom: 1.5, left: 16, right: 16),
              width: 364,
              height: 69,
              child: Row(
                  children:[ Padding(
                    padding: const EdgeInsets.only(top: 6.0,bottom: 6,right: 6,left: 17),
                    child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            begin: Alignment(-1, -1),
                            end: Alignment(-1, 1),
                            colors: [
                              Color(0xFF1F1F1F),
                              Color(0xFF696969),

                            ],
                          ),
                        ),
                        // transform: Matrix4.translationValues(0, 48, 0),
                        width: 50.11,
                        height: 50.11,
                        child: IconButton(onPressed: (){},icon: Icon(Icons.color_lens_rounded,color: Color(0xFFB03CFC),size: 30,),)
                    ),
                  ),
                    TextButton(style:TextButton.styleFrom(backgroundColor: Colors.black,maximumSize: Size(900.0, 500.0)) ,onPressed: (){}, child:  Text("Theme",style: TextStyle(fontSize: 17,color: Colors.white),)),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.start,color:  Color(0xFF707070),size: 38,))
                  ]),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFF000000),
              ),
              padding: EdgeInsets.symmetric(vertical: 6),
              margin: EdgeInsets.only( bottom: 19, left: 16, right: 16),
              width: 364,
              height: 69,
              child: Row(
                  children:[ Padding(
                    padding: const EdgeInsets.only(top: 6.0,bottom: 6,right: 6,left: 17),
                    child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            begin: Alignment(-1, -1),
                            end: Alignment(-1, 1),
                            colors: [
                              Color(0xFF1F1F1F),
                              Color(0xFF696969),

                            ],
                          ),
                        ),
                        // transform: Matrix4.translationValues(0, 48, 0),
                        width: 50.11,
                        height: 50.11,
                        child: IconButton(onPressed: (){},icon: Icon(Icons.clear,color: Color(0xFFB03CFC),size: 30,),)
                    ),
                  ),
                    TextButton(style:TextButton.styleFrom(backgroundColor: Colors.black,maximumSize: Size(900.0, 500.0)) ,onPressed: (){}, child:  Text("Clear History",style: TextStyle(fontSize: 17,color: Colors.white),)),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.start,color:  Color(0xFF707070),size: 38,))
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3,bottom: 8,right: 8,left: 38),
              child: Text('ABOUT',style: TextStyle(color: Color(0xFF707070),fontSize: 18),),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFF000000),
              ),
              padding: EdgeInsets.symmetric(vertical: 6),
              margin: EdgeInsets.only( bottom: 1.5, left: 16, right: 16),
              width: 364,
              height: 69,
              child: Row(
                  children:[ Padding(
                    padding: const EdgeInsets.only(top: 6.0,bottom: 6,right: 6,left: 17),
                    child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            begin: Alignment(-1, -1),
                            end: Alignment(-1, 1),
                            colors: [
                              Color(0xFF1F1F1F),
                              Color(0xFF696969),

                            ],
                          ),
                        ),
                        // transform: Matrix4.translationValues(0, 48, 0),
                        width: 50.11,
                        height: 50.11,
                        child: IconButton(onPressed: (){},icon: Icon(Icons.star,color: Color(0xFFB03CFC),size: 30,),)
                    ),
                  ),
                    TextButton(style:TextButton.styleFrom(backgroundColor: Colors.black,maximumSize: Size(900.0, 500.0)) ,onPressed: (){}, child:  Text("Rate us",style: TextStyle(fontSize: 17,color: Colors.white),)),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.start,color:  Color(0xFF707070),size: 38,))
                  ]),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFF000000),
              ),
              padding: EdgeInsets.symmetric(vertical: 6),
              margin: EdgeInsets.only( bottom: 1.5, left: 16, right: 16),
              width: 364,
              height: 69,
              child: Row(
                  children:[ Padding(
                    padding: const EdgeInsets.only(top: 6.0,bottom: 6,right: 6,left: 17),
                    child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            begin: Alignment(-1, -1),
                            end: Alignment(-1, 1),
                            colors: [
                              Color(0xFF1F1F1F),
                              Color(0xFF696969),

                            ],
                          ),
                        ),
                        // transform: Matrix4.translationValues(0, 48, 0),
                        width: 50.11,
                        height: 50.11,
                        child: IconButton(onPressed: (){},icon: Icon(Icons.clear,color: Color(0xFFB03CFC),size: 30,),)
                    ),
                  ),
                    TextButton(style:TextButton.styleFrom(backgroundColor: Colors.black,maximumSize: Size(900.0, 500.0)) ,onPressed: (){}, child:  Text("Share with Friends",style: TextStyle(fontSize: 17,color: Colors.white),)),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.start,color:  Color(0xFF707070),size: 38,))
                  ]),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFF000000),
              ),
              padding: EdgeInsets.symmetric(vertical: 6),
              margin: EdgeInsets.only( bottom: 19, left: 16, right: 16),
              width: 364,
              height: 69,
              child: Row(
                  children:[ Padding(
                    padding: const EdgeInsets.only(top: 6.0,bottom: 6,right: 6,left: 17),
                    child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            begin: Alignment(-1, -1),
                            end: Alignment(-1, 1),
                            colors: [
                              Color(0xFF1F1F1F),
                              Color(0xFF696969),

                            ],
                          ),
                        ),
                        // transform: Matrix4.translationValues(0, 48, 0),
                        width: 50.11,
                        height: 50.11,
                        child: IconButton(onPressed: (){},icon: Icon(Icons.privacy_tip,color: Color(0xFFB03CFC),size: 30,),)
                    ),
                  ),
                    TextButton(style:TextButton.styleFrom(backgroundColor: Colors.black,maximumSize: Size(900.0, 500.0)) ,onPressed: (){}, child:  Text("Privacy Policy",style: TextStyle(fontSize: 17,color: Colors.white),)),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.start,color:  Color(0xFF707070),size: 38,))
                  ]),
            ),


          ],),
          // backgroundColor: Color,
          appBar: PreferredSize(preferredSize: Size.fromHeight(80),
            child: AppBar(

              title: Column(children: [Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Text("Ahmed",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 28),),
              ),Padding(
                padding: const EdgeInsets.only(bottom: 6,top: 1),
                child: ( Text("Online now",style: TextStyle(color: Color.fromRGBO(204, 204, 204, 5),fontSize: 16),)),
              )],),
              centerTitle: true,
              backgroundColor: Color.fromRGBO(42,39,48,266),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25))),
              actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Color(0xFFB03CFC),size: 30,))],
            
            
            
                ),
          )

        ),
    );
  }
}
