import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'homepage.dart';
class EE extends StatefulWidget {
  const EE({Key? key, required this.a}) : super(key: key);
  final String a ;
  @override
  State<EE> createState() => _EEState();
}
int c=0;
class _EEState extends State<EE> {
  @override
  Widget build(BuildContext context) {
    Color shadowcolor1=Colors.red;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Scaffold(
          backgroundColor: Color.fromARGB(255,245,189,159),
          body: Container(

              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("${widget.a}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                        shadows: [
                          Shadow(
                            color: shadowcolor1,
                            blurRadius: 3,
                          ),
                          Shadow(
                            color: shadowcolor1,
                            blurRadius: 6,
                          ),
                          Shadow(
                            color: shadowcolor1,
                            blurRadius: 9,
                          ),

                        ],fontFamily: 'MsMadi'),),
                  Text("Choose semster",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        shadows: [
                          Shadow(
                            color: Colors.blue,
                            blurRadius: 3,
                          ),
                          Shadow(
                            color: Colors.blue,
                            blurRadius: 6,
                          ),
                          Shadow(
                            color:Colors.blue,
                            blurRadius: 9,
                          ),

                        ],fontFamily: 'MsMadi'),),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        ElevatedButton(
                            onPressed: (){
                              setState((){

                                if("${widget.a}"=="First year"){
                                  c=1;}
                                else if("${widget.a}"=="Second year"){
                                  c=3;
                                }
                                else if("${widget.a}"=="Third year"){
                                  c=5;
                                }
                                else{
                                  c=7;
                                }
                              });
                            },style: ElevatedButton.styleFrom(primary: Color.fromARGB(255,255,183,195)), child: Text("Odd Semester",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            shadows: [
                              Shadow(
                                color: Colors.blue,
                                blurRadius: 3,
                              ),
                              Shadow(
                                color: Colors.blue,
                                blurRadius: 6,
                              ),
                              Shadow(
                                color:Colors.blue,
                                blurRadius: 9,
                              ),

                            ],fontFamily: 'MsMadi'))),
                        SizedBox(width: 10,),
                        ElevatedButton(onPressed: (){

                          setState((){

                            if("${widget.a}"=="First year"){
                              c=2;}
                            else if("${widget.a}"=="Second year"){
                              c=4;
                            }
                            else if("${widget.a}"=="Third year"){
                              c=6;
                            }
                            else{
                              c=8;
                            }
                          });
                        },style: ElevatedButton.styleFrom(primary: Color.fromARGB(255,255,183,195)), child: Text("Even Semester",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            shadows: [
                              Shadow(
                                color: Colors.blue,
                                blurRadius: 3,
                              ),
                              Shadow(
                                color: Colors.blue,
                                blurRadius: 6,
                              ),
                              Shadow(
                                color:Colors.blue,
                                blurRadius: 9,
                              ),

                            ], fontFamily: 'MsMadi'),)),]),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      
                      /////////////////////////////////////////////////////////////////////////////////
                      Visibility(
                        visible: c==3,
                        child:Container(height: MediaQuery.of(context).size.height*0.68,
                          margin: EdgeInsets.symmetric(horizontal: 60),
                          child:AnimationLimiter(
                              child:ListView(
                                  children: [
                                    AnimationConfiguration.synchronized(

                                        duration: const Duration(milliseconds: 2000),

                                        child:ScaleAnimation(
                                            curve: Curves.easeInExpo,
                                            child:ScaleAnimation(
                                                curve: Curves.easeInExpo,
                                                child:Column(children: [
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/electric1.png"),),
                                                    title: Text('Electromagnetic Field Theory'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/second year/odd semester/electromagnetic field theory")));
                                                    },
                                                  ),SizedBox(height: 5,),
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/instrument.png"),),
                                                    title: Text('	Electrical Measurements & Instrumentation'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/second year/odd semester/electrical measurements & instrumentation")));
                                                    },
                                                  ),SizedBox(height: 5,),
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/electrical.png"),),
                                                    title: Text('Basic Signals & Systems'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/second year/odd semester/basic signals & systems")));
                                                    },
                                                  ),SizedBox(height: 5,),
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/soft.png"),),
                                                    title: Text('Universal Human Values'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/second year/odd semester/uiversal hman vlues")));
                                                    },
                                                  ),SizedBox(height: 5,),
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/math.png"),),
                                                    title: Text('Maths4'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/second year/odd semester/mathematics4")));
                                                    },
                                                  ),
                                                ])))
                                    )
                                  ])),),),
                      Visibility(
                          visible: c==5,
                          child:Container(height: MediaQuery.of(context).size.height*0.68,
                              margin: EdgeInsets.symmetric(horizontal: 60),
                              child:AnimationLimiter(
                                  child:ListView(
                                      children: [
                                        AnimationConfiguration.synchronized(

                                            duration: const Duration(milliseconds: 2000),

                                            child:ScaleAnimation(
                                              curve: Curves.easeInExpo,
                                              child:ScaleAnimation(
                                                curve: Curves.easeInExpo,
                                                child:Column(children:[
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/instrument.png"),),
                                                    title: Text('Power System - I'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/third year/odd semester/power system - I")));},
                                                  ),
                                                  SizedBox(height: 9,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/hvdc.png"),),
                                                    title: Text('Control System'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/third year/odd semester/control system")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/machine.png"),),
                                                    title: Text('Electrical Machines-II'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/third year/odd semester/electrical machines-II")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/ai.png"),),
                                                    title: Text('Robotics'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/third year/odd semester/robotics")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/architecture.png"),),
                                                    title: Text('Analog & Digital Communication'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/third year/odd semester/analog & digital communication")));},
                                                  ),
                                                ],
                                                ),),))])))
                      ),
                      Visibility(
                          visible: c==7,
                          child:Container(height: MediaQuery.of(context).size.height*0.68,
                              margin: EdgeInsets.symmetric(horizontal: 60),
                              child:AnimationLimiter(
                                  child:ListView(
                                      children: [
                                        AnimationConfiguration.synchronized(

                                            duration: const Duration(milliseconds: 2000),

                                            child:ScaleAnimation(
                                              curve: Curves.easeInExpo,
                                              child:ScaleAnimation(
                                                curve: Curves.easeInExpo,
                                                child:Column(children:[

                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/hvdc.png"),),
                                                    title: Text('HVDC & AC Transmission'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/fourth year/odd semester/hVDC & AC Transmission")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/electric1.png"),),
                                                    title: Text('Utilization of Electrical Energy & Electric Tractio'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/fourth year/odd semester/utilization of Electrical Energy & Electric Tractio")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/hvdc.png"),),
                                                    title: Text('RENEWABLE ENERGY RESOURCES'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/forth year/odd semester/rENEWABLE ENERGY RESOURCES")));},
                                                  ),
                                                  SizedBox(height: 7,),

                                                ],
                                                ),),))])))),
                      Visibility(
                          visible: c==1,
                          child:Container(height: MediaQuery.of(context).size.height*0.68,
                              margin: EdgeInsets.symmetric(horizontal: 60),
                              child:AnimationLimiter(
                                  child:ListView(
                                      children: [
                                        AnimationConfiguration.synchronized(

                                            duration: const Duration(milliseconds: 2000),

                                            child:ScaleAnimation(
                                              curve: Curves.easeInExpo,
                                              child:ScaleAnimation(
                                                curve: Curves.easeInExpo,
                                                child:Column(children:[

                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/electrical.png"),),
                                                    title: Text('Electrical'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/first year/odd semester/electrical")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/drawing.png"),),
                                                    title: Text('Eng Drawing'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/first year/odd semester/eng drawing")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/programming.png"),),
                                                    title: Text('Programming'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/first year/odd semester/programming")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/chemistery.png"),),
                                                    title: Text('Chemistery'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/first year/odd semester/chemistery")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/math.png"),),
                                                    title: Text('Mathmatics'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/first year/odd semester/mathematics1")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/soft.png"),),
                                                    title: Text('Softsill1'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/first year/odd semester/softskill1")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/ai.png"),),
                                                    title: Text('Artificial Intelligence'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/first year/odd semester/artificial intelligence")));},
                                                  ),
                                                ],
                                                ),),))])))),



                      Visibility(
                          visible: c==2,
                          child:Container(height: MediaQuery.of(context).size.height*0.68,
                              margin: EdgeInsets.symmetric(horizontal: 60),
                              child:AnimationLimiter(
                                  child:ListView(
                                      children: [
                                        AnimationConfiguration.synchronized(

                                            duration: const Duration(milliseconds: 2000),

                                            child:ScaleAnimation(
                                              curve: Curves.easeInExpo,
                                              child:ScaleAnimation(
                                                curve: Curves.easeInExpo,
                                                child:Column(children:[

                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/electrical.png"),),
                                                    title: Text('Electronics'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/first year/even semester/electronics")));},
                                                  ),

                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/mechtronics.png"),),
                                                    title: Text('Mechatronics'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/first year/even semester/mechatronics")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/physics.png"),),
                                                    title: Text('Physics'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/first year/even semester/physics")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/math.png"),),
                                                    title: Text('Mathmatics'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/first year/even semester/mathematics2")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/soft.png"),),
                                                    title: Text('Softsill2'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/first year/even semester/softskill2")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/ai.png"),),
                                                    title: Text('Emerging Technology'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/first year/even semester/emerging technology")));},
                                                  ),
                                                ],
                                                ),),))])))
                      ),
                      
                      Visibility(
                        visible: c==4,
                        child:Container(height: MediaQuery.of(context).size.height*0.68,
                          margin: EdgeInsets.symmetric(horizontal: 60),
                          child:AnimationLimiter(
                              child:ListView(
                                  children: [
                                    AnimationConfiguration.synchronized(

                                        duration: const Duration(milliseconds: 2000),

                                        child:ScaleAnimation(
                                            curve: Curves.easeInExpo,
                                            child:ScaleAnimation(
                                                curve: Curves.easeInExpo,
                                                child:Column(children: [
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/architecture.png"),),
                                                    title: Text('Digital Electronics'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/second year/even semester/digital electronics")));
                                                    },
                                                  ),SizedBox(height: 5,),
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/machine.png"),),
                                                    title: Text('Electrical Machines-I'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/second year/even semester/electrical machines-I")));
                                                    },
                                                  ),SizedBox(height: 5,),
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/soft.png"),),
                                                    title: Text('Technical Communication'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/second year/even semester/technical communication")));
                                                    },
                                                  ),SizedBox(height: 5,),
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/compiler.png"),),
                                                    title: Text('Networks Analysis & Synthesis'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/second year/even semester/networks analysis & synthesis")));
                                                    },
                                                  ),
                                                  SizedBox(height: 5,),
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/ai.png"),),
                                                    title: Text('Introduction to Soft Computing'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/second year/even semester/introduction to soft computing")));
                                                    },
                                                  ),
                                                ])))
                                    )
                                  ])),),),
                      Visibility(
                          visible: c==6,
                          child:Container(height: MediaQuery.of(context).size.height*0.68,
                              margin: EdgeInsets.symmetric(horizontal: 60),
                              child:AnimationLimiter(
                                  child:ListView(
                                      children: [
                                        AnimationConfiguration.synchronized(

                                            duration: const Duration(milliseconds: 2000),

                                            child:ScaleAnimation(
                                              curve: Curves.easeInExpo,
                                              child:ScaleAnimation(
                                                curve: Curves.easeInExpo,
                                                child:Column(children:[
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/machine.png"),),
                                                    title: Text('Power System-II'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/third year/even semester/power system-II")));},
                                                  ),
                                                  SizedBox(height: 9,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/architecture.png"),),
                                                    title: Text('Microprocessor and Microcontroller'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/third year/even semester/microprocessor and microcontroller")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/hvdc.png"),),
                                                      title: Text('Power Electronics'),
                                                      tileColor: Color.fromARGB(255,255,222,205),
                                                      shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        ),),
                                                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/third year/even semester/power electronics")));}
                                                  ),
                                                  SizedBox(height: 7),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/machine.png"),),
                                                    title: Text('Special Electrical Machines'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/third year/even semester/special electrical machines")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/soft.png"),),
                                                    title: Text('Understanding Human Being, Nature and Existence Comprehensively'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/third year/odd semester/understanding Human Being, Nature and Existence Comprehensively")));},
                                                  ),
                                                ],
                                                ),),))])))
                      ),
                      Visibility(
                          visible: c==8,
                          child:Container(height: MediaQuery.of(context).size.height*0.68,
                              margin: EdgeInsets.symmetric(horizontal: 60),
                              child:AnimationLimiter(
                                  child:ListView(
                                      children: [
                                        AnimationConfiguration.synchronized(

                                            duration: const Duration(milliseconds: 2000),

                                            child:ScaleAnimation(
                                              curve: Curves.easeInExpo,
                                              child:ScaleAnimation(
                                                curve: Curves.easeInExpo,
                                                child:Column(children:[
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/ai.png"),),
                                                    title: Text('AUTOMATION AND ROBOTICS'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/fourth year/even semester/aUTOMATION AND ROBOTICS")));},
                                                  ),
                                                  SizedBox(height: 9,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/architecture.png"),),
                                                    title: Text('INTRODUCTION TO SMART GRID'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/fourth year/even semester/iNTRODUCTION TO SMART GRID")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/soft.png"),),
                                                      title: Text('Rural Development: Administration and Planning'),
                                                      tileColor: Color.fromARGB(255,255,222,205),
                                                      shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        ),),
                                                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/electrical engineering/fourth year/even semester/rural development: administration and planing")));}
                                                  ),

                                                ],
                                                ),),))])))
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }
}
