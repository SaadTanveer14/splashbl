import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:splashbl/transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late RiveAnimationController animation_1;
  bool animationstate_1 = true;
  bool animationstate_2 = true;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  
    activate();

      
    

  }

 void activate()
  {
    Future.delayed(Duration(seconds: 3),activateAnimation);
  }

  void activateAnimation()
  {
    if(animationstate_1 == true)
    {
      setState(() {
         animationstate_1=false;
      });

      activate2();
     
    }
  }


   void activate2()
  {
    Future.delayed(Duration(seconds: 1),activateAnimation2);
  }

  void activateAnimation2()
  {
    if(animationstate_2 == true)
    {
      setState(() {
         animationstate_2=false;
      });
     
    }
  }


  


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Color(0xff032413),
      // backgroundColor: Color(0xff007f3e),

      body: Stack(
        children: [
          Center(
            child: RiveAnimation.asset(
              'assets/file.riv', 
              fit: BoxFit.fitWidth,

            ),
          ),

          Positioned(
            bottom: MediaQuery.of(context).size.height*0.01,
            right: MediaQuery.of(context).size.width*0.02,

            child: Container(
              height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width*0.2,
              child: Image.asset('assets/blgov.png')
            )
          ),

          if(animationstate_1 == false) 
            Container(
              height: MediaQuery.of(context).size.height*1,
              width: MediaQuery.of(context).size.width*1,
              child: RiveAnimation.asset('assets/transition.riv', fit: BoxFit.fill,)
            ),


          if(animationstate_2 == false) 
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height*0.6,
                width: MediaQuery.of(context).size.width*0.6,
                child: RiveAnimation.asset('assets/logo.riv',)
                      ),
            ),


            if(animationstate_2 == false) 
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(left:20, right: 20),
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.2,
                      width: MediaQuery.of(context).size.width*0.2,
                      child: Image.asset('assets/kpgov.png' ,)
                        ),
                    
                    Spacer(),
                    
                    Container(
                      height: MediaQuery.of(context).size.height*0.2,
                      width: MediaQuery.of(context).size.width*0.2,
                      child: Image.asset('assets/punjabgov.png' ,)
                    ),
              
                    Spacer(),
              
              
                    Container(
                      height: MediaQuery.of(context).size.height*0.2,
                      width: MediaQuery.of(context).size.width*0.2,
                      child: Image.asset('assets/blgov.png' ,)
                    ),
                    
              
                    Spacer(),
                
                    Container(
                      height: MediaQuery.of(context).size.height*0.2,
                      width: MediaQuery.of(context).size.width*0.2,
                      child: Image.asset('assets/sindhgov.png' ,)
                    ),
                  ],
                ),
              ),
            ),


            




              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Transition(),),)
            
        ],
      ),
    );
  }
}
