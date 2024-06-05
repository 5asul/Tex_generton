import 'package:Tex_generton/Pages/Page.dart';
import 'package:Tex_generton/Pages/Page6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page6 extends StatefulWidget {
  const Page6({super.key});

  @override
  State<Page6> createState() => _Page6State();
}

var x = Color(0xFF545454);
var z = Color(0xFF545454);
var c = Color(0xFF545454);
/////
var org = Color(0xFF545454);
////
var a = Color(0xFFB03CFC);
var b = Color(0xFFB03CFC);
var d = Color(0xFFB03CFC);

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        bottomNavigationBar: BottomAppBar(
          height: 108,
          child: Container(
            width: double.infinity,
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
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (x == Color(0xFF545454)) {
                                  x = Color(0xFFB03CFC);
                                  z = Color(0xFF545454);
                                  c = Color(0xFF545454);
                                }
                                // x=a;
                                // b=z;
                              });
                            },
                            icon: Icon(
                              Icons.mark_unread_chat_alt,
                              color: x,
                              size: 30,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Chat",
                          style: TextStyle(
                              color: x,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      )

                      // IconButton(onPressed: (){}, icon: Icon(Icons.chat,color:Color(0xFFB03CFC),size: 30,)),
                      // Spacer(flex: 1,),
                    ],
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
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
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (z == Color(0xFF545454)) {
                                  z = Color(0xFFB03CFC);
                                  x = Color(0xFF545454);
                                  c = Color(0xFF545454);
                                }
                              });
                            },
                            icon: Icon(
                              Icons.explore_rounded,
                              color: z,
                              size: 30,
                            )),
                      ),
                      Text(
                        "Explore",
                        style: TextStyle(
                            color: z,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),

                Container(
                  width: 80,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.5, top: 6, right: 6, bottom: 6),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (c == Color(0xFF545454)) {
                                  x = Color(0xFF545454);
                                  z = Color(0xFF545454);
                                  c = Color(0xFFB03CFC);
                                }
                                // x=a;
                                // b=z;
                              });
                            },
                            icon: Icon(
                              Icons.history,
                              color: c,
                              size: 30,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "History",
                          style: TextStyle(
                              color: c,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            leading: IconButton(onPressed: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Page5()));
            }, icon: Icon(Icons.keyboard_backspace,  color: Color(0xFFB03CFC),
              size: 30,)),
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
                    Icons.search,
                    color: Color(0xFFB03CFC),
                    size: 30,
                  ))
            ],
          ),
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 14,
                      ),
                      Container(
                        width: 42.88,
                        height: 37.08,
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
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "All",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            )),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Container(
                        width: 88.88,
                        height: 37.06,
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
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Content",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            )),
                      ),
                      SizedBox(
                        width: 14,
                      ),

                      // Spacer(flex: 255,),
                      Container(
                        width: 88.88,
                        height: 37.06,
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
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Content",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            )),
                      ),
                      SizedBox(
                        width: 14,
                      ),

                      // Spacer(flex: 255,),
                      Container(
                        width: 88.88,
                        height: 37.06,
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
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Content",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            )),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      // Spacer(flex: 255,),
                      Container(
                        width: 88.88,
                        height: 37.06,
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
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Content",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Content",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1.0, left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                     onTap: () {
                        Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Pg6()));},
                      child: Container(
                        width: 153,
                        height: 152,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: Color.fromRGBO(84, 84, 84, 1), width: 2)
                            // color:  Color.fromRGBO(204, 204, 204, 5)

                            ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) => Pg6()));
                                  },
                                  icon: Icon(
                                    Icons.language,
                                    color: Color(0xFFB03CFC),
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, bottom: 1),
                              child: Text("Translate",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  )),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8, bottom: 0),
                              child: Text(
                                  "Translate text from onelanguage into another",
                                  style: TextStyle(
                                    color: Color.fromRGBO(204, 204, 204, 1),
                                    fontSize: 12.5,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                      width: 153,
                      height: 152,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: Color.fromRGBO(84, 84, 84, 1), width: 2)
                          // color:  Color.fromRGBO(204, 204, 204, 5)

                          ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.language,
                                  color: Color(0xFFB03CFC),
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 1),
                            child: Text("Translate",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                )),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: Text(
                                "Translate text from onelanguage into another",
                                style: TextStyle(
                                  color: Color.fromRGBO(204, 204, 204, 1),
                                  fontSize: 12.5,
                                )),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                      width: 153,
                      height: 152,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: Color.fromRGBO(84, 84, 84, 1), width: 2)
                          // color:  Color.fromRGBO(204, 204, 204, 5)

                          ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.language,
                                  color: Color(0xFFB03CFC),
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 1),
                            child: Text("Translate",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                )),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: Text(
                                "Translate text from onelanguage into another",
                                style: TextStyle(
                                  color: Color.fromRGBO(204, 204, 204, 1),
                                  fontSize: 12.5,
                                )),
                          )
                        ],
                      ),
                    ),
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
