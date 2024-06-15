// ignore: file_names
import 'package:Tex_generton/Pages/translateFilePage.dart';
// import 'package:flutter/Pg6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page7 extends StatefulWidget {
  const Page7({super.key});

  @override
  State<Page7> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Page7> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Text(
                    "Ahmed",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 28),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 6, top: 1),
                  child: (Text(
                    "Online now",
                    style: TextStyle(
                        color: Color.fromRGBO(204, 204, 204, 5), fontSize: 16),
                  )),
                )
              ],
            ),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(42, 39, 48, 266),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.search,
                    color: Color(0xFFB03CFC),
                    size: 30,
                  ))
            ],
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 60,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // padding: EdgeInsets.all(50),
                height: 113,
                width: 382.21,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Color.fromRGBO(84, 84, 84, 1), width: 2)
                    // color:  Color.fromRGBO(204, 204, 204, 5)

                    ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Container(
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
                        transform: Matrix4.translationValues(0, 10, 0),
                        width: 40,
                        height: 41,
                        child: Icon(
                          CupertinoIcons.wind_snow,
                          color: Color(0xFFB03CFC),
                          size: 35,
                        )),
                    Text("${z}"),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 33,
            // ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 25, top: 5),
            //       child: Text(
            //         "What do you want to translate?",
            //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Container(
            //         // padding: EdgeInsets.all(50),
            //         height: 113,
            //         width: 382.21,
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(12),
            //             border: Border.all(
            //                 color: Color.fromRGBO(84, 84, 84, 1), width: 2)
            //             // color:  Color.fromRGBO(204, 204, 204, 5)

            //             ),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Text(
            //                 "Filename: ",
            //                 style: TextStyle(fontSize: 17.5),
            //               ),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.end,
            //                 children: [
            //                   Container(
            //                       width: 40,
            //                       height: 40,
            //                       // color: Color(0xFF696962),
            //                       // decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
            //                       // decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),),
            //                       child: IconButton(
            //                         onPressed: () {
            //                           // openFiles();
            //                         },
            //                         icon:
            //                             Icon(CupertinoIcons.arrow_up_doc_fill),
            //                         color: Color(0xFFB03CFC),
            //                       ))
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 25, top: 5),
            //       child: Text(
            //         "Language",
            //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Container(
            //         // padding: EdgeInsets.all(50),
            //         height: 51,
            //         width: 382.21,
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(12),
            //             border: Border.all(
            //                 color: Color.fromRGBO(84, 84, 84, 1), width: 2)
            //             // color:  Color.fromRGBO(204, 204, 204, 5)

            //             ),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Text(
            //                 "Arabic",
            //                 style: TextStyle(fontSize: 17.5),
            //               ),
            //             ),
            //             // Padding(
            //             //   padding: const EdgeInsets.all(8.0),
            //             //   child: Row(mainAxisAlignment: MainAxisAlignment.end,
            //             //     children: [
            //             //
            //             //     ],),
            //             // ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // Spacer(),
            SizedBox(
              height: 472,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                backgroundColor: Color(0xFFB03CFC),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Translate()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Rgenerate",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(CupertinoIcons.arrow_right)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
