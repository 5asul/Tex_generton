import 'package:flutter/material.dart';
import 'acount.dart';

class begin extends StatelessWidget {
  const begin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // theme : ThemeData.dark().copyWith()
        backgroundColor: Color(0xEE1C1B1B),
        appBar: AppBar(
          title: Text("HALA",
          style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFFB03CFC),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFB03CFC),
                        width: 2,
                      ),
                      color: Color(0xFFB03CFC),
                      borderRadius: BorderRadius.all(Radius.circular(4000)),
                    )),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "asset/instagram.png",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                },
                color: Color(0xFFB03CFC),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Go",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Icon(
                        Icons.login,
                        color: Colors.white,
                        size: 30,
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
