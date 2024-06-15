import 'package:Tex_generton/Pages/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xEE1C1B1B),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height /3 + 70,
              child: Stack(
                children: [
                   CustomPaint(
                     painter: HeaderPainter(),
                     child: SizedBox(
                      width: size.width,
                      height: size.height / 3,
                      child: const Center(child: Text("HALA",
                      style: TextStyle(fontSize: 40,color: Colors.white),)),
                     ),
                   ),
                   Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset("asset/instagram.png",
                      height: 130,
                      width: 130,
                    ),
        
                   )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFildA(primarColor: Color(0xFFB03CFC),
             beginColor: Colors.white, 
             endColor: Color(0xFFB03CFC), 
             label: "CardNumber", 
             icon: Icons.person, 
             duration: const Duration(microseconds: 4), 
             secureText: true 
             ),
            
            // const SizedBox(
            //   height: 20,
            // ),
            // TextFildA(primarColor: Color(),
            //  beginColor: Colors.white, 
            //  endColor: Colors.blueGrey, 
            //  label: "Password", 
            //  icon: Icons.lock, 
            //  duration: const Duration(microseconds: 4), 
            //  secureText: true 
            //  ),

             const SizedBox(
              height: 20,
             ),
             SizedBox(
              width: 320,
              height: 50,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage()));
                },
                color: Color(0xFFB03CFC),
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(8) ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Login",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                    Icon(Icons.login,color: Colors.white,size: 30,)
                  ]
                  ),
                ),
             ),
             const SizedBox(height: 15,),
             const Text("or login with",
             style: TextStyle(color: Colors.white,fontSize: 18),
             ),

             const SizedBox( height: 15,),
             SizedBox( width: 320,
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildSocialMediaBtn(color: Color.fromARGB(255, 235 , 244, 233),
                icon: Icons.facebook_sharp ),
                _buildSocialMediaBtn(color: Color.fromARGB(255, 235 , 244, 233),
                icon: Icons.facebook_rounded ),
                _buildSocialMediaBtn(color: Color.fromARGB(255, 235 , 244, 233),
                icon: Icons.facebook_outlined ),
              ],
             ),
             ),
          ],
        ),
      )
     );
  }
  Widget _buildSocialMediaBtn({required Color color, required IconData icon}){
    return Container(
      width: 80,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFB03CFC)),
        borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Icon(icon,color: color,),
        ),
    );
  }
}
 class HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xFFB03CFC);
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 2, size.height+80, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return canvas.drawPath(path, paint);
  }
 
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

 }

// Text_Fild................................................

class TextFildA extends StatefulWidget {
  Color primarColor, beginColor, endColor;
  String label;
  IconData icon;
  Duration duration;
  bool secureText;
  TextFildA({Key? key, 
  required this.primarColor,required this.beginColor,
  required this.endColor, required this.label,
  required this.icon,required this.duration,
   required this.secureText}): super(key: key);

  @override
  State<TextFildA> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TextFildA> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _scaleAnimation;
  late Animation _ColorAnimation;
  FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    
    _animationController = 
       AnimationController(vsync: this, duration: widget.duration );
    _scaleAnimation = Tween(begin:1.0, end: 0.0 ).animate(_animationController);
    _ColorAnimation = ColorTween(begin: widget.beginColor, 
    end: widget.endColor).animate(_animationController);

    

    _animationController.addListener(() {
      setState(() { });
    });

    void _onTextFieldFocusChange(){
      if (_focusNode.hasFocus){
        _animationController.forward();
      }
      
      else{
        _animationController.reverse();
      }
    }

    _focusNode.addListener(_onTextFieldFocusChange);
    
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 50,
      child: Stack(
        children: [
          LayoutBuilder(builder: (_ , constraints){
            return Transform.scale(
            scaleX: _scaleAnimation.value,
            origin: Offset(constraints.maxWidth / 2, 0),
            child: Container(
              decoration: BoxDecoration(
                color: widget.primarColor,
                borderRadius: BorderRadius.circular(10)
              ),
             ),
           );
          }),
          TextField(
            focusNode: _focusNode,
            obscureText: widget.secureText,
            decoration: InputDecoration(
              label: Text(
                widget.label,
                style: TextStyle(color: _ColorAnimation.value),
              ),
              border: InputBorder.none,
              focusedBorder: const OutlineInputBorder(),
              prefixIcon: Icon(widget.icon,color: _ColorAnimation.value,),
            ),
          ),
        ],
      ),
    );
    
  }
}
