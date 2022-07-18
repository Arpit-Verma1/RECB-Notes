import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'homepage.dart';

class Civil extends StatefulWidget {
  const Civil({Key? key, required this.a}) : super(key: key);
  final String a ;
  @override
  State<Civil> createState() => _CivilState();
}

class _CivilState extends State<Civil> {
  int c=0;
  @override
  Widget build(BuildContext context) {
    Color shadowcolor1=Colors.red;
    return  MaterialApp(
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
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/energy.png"),),
                                                    title: Text('Energy Science & Engineering'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/second year/odd semester/energy science & engineering")));
                                                    },
                                                  ),SizedBox(height: 5,),
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/mechtronics.png"),),
                                                    title: Text('Engg. Mechanics'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/second year/odd semester/engg. mechanics")));
                                                    },
                                                  ),SizedBox(height: 5,),
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/geomatics.png"),),
                                                    title: Text('Surveying and Geomatics'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/second year/odd semester/surveying and geomatics")));
                                                    },
                                                  ),SizedBox(height: 5,),
                                                 SizedBox(height: 5,),
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/dam.png"),),
                                                    title: Text('Fluid Mechanics'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/second year/odd semester/fluid mechanics")));
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
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/geomatics.png"),),
                                                    title: Text('Geotechnical Engineering'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/third year/odd semester/geotechnical engineering")));},
                                                  ),
                                                  SizedBox(height: 9,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/material.png"),),
                                                    title: Text('	Structural Analysis'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/third year/odd semester/structural analysis")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/construction.png"),),
                                                    title: Text('	Quantity Estimation and Construction Management'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/third year/odd semester/quantity estimation and construction management")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/dam.png"),),
                                                    title: Text('Open Channel Flow'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/third year/odd semester/open channel flow")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/dam.png"),),
                                                    title: Text('Engineering Hydrology'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/third year/odd semester/engineering hydrology")));},
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

                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/concrete.png"),),
                                                    title: Text('	Railway, Waterway and Airway Engineering'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/fourth year/odd semester/railway, Waterway and Airway Engineering")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/mechtronics.png"),),
                                                    title: Text('Design of Steel Structures'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/fourth year/odd semester/design of Steel Structures")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/energy.png"),),
                                                    title: Text('RENEWABLE ENERGY RESOURCES'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/fourth year/odd semester/rENEWABLE ENERGY RESOURCES")));},
                                                  ),

                                                ],
                                                ),),))])))),


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
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/soft.png"),),
                                                    title: Text('Universal Human Values'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/second year/odd semester/uiversal hman vlues")));
                                                    },
                                                  ),
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/math.png"),),
                                                    title: Text('Maths III'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/second year/even semester/maths III")));
                                                    },
                                                  ),SizedBox(height: 5,),
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/material.png"),),
                                                    title: Text('	Materials, Testing & Construction Practices'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/second year/even semester/materials, testing & construction practices")));
                                                    },
                                                  ),SizedBox(height: 5,),

                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/dam.png"),),
                                                    title: Text('	Introduction to Solid Mechanics'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/second year/even semester/introduction to solid mechanics")));
                                                    },
                                                  ),
                                                  SizedBox(height: 5,),
                                                  ListTile(
                                                    leading: CircleAvatar(  foregroundImage: AssetImage("assets/dam.png"),),
                                                    title: Text('	Hydraulic Engineering and Machines'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        )),
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/second year/even semester/Hydraulic Engineering and Machines")));
                                                    },
                                                  ),SizedBox(height: 5,),

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
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/concrete.png"),),
                                                    title: Text('Design of Concrete Structures'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/third year/even semester/design of Concrete Structures")));},
                                                  ),
                                                  SizedBox(height: 9,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/construction.png"),),
                                                    title: Text('Transportation Engineering'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/third year/even semester/transportation Engineering")));},
                                                  ),
                                                  SizedBox(height: 7,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/energy.png"),),
                                                      title: Text('Environmental Engineering'),
                                                      tileColor: Color.fromARGB(255,255,222,205),
                                                      shape: BeveledRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        side: BorderSide(
                                                          color: Colors.black54,
                                                        ),),
                                                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/third year/even semester/environmental Engineering")));}
                                                  ),
                                                  SizedBox(height: 7),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/drawing.png"),),
                                                    title: Text('Foundation Design'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/third year/even semester/foundation Design")));},
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
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/third year/odd semester/understanding Human Being, Nature and Existence Comprehensively")));},
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
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/material.png"),),
                                                    title: Text('QUALITY MANAGEMENT'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/fourth year/even semester/qUALITY MANAGEMENT")));},
                                                  ),
                                                  SizedBox(height: 9,),
                                                  ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/ai.png"),),
                                                    title: Text('DIGITAL AND SOCIAL MEDIA MARKETING'),
                                                    tileColor: Color.fromARGB(255,255,222,205),
                                                    shape: BeveledRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      side: BorderSide(
                                                        color: Colors.black54,
                                                      ),),
                                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/civil engineering/fourth year/even semester/dIGITAL AND SOCIAL MEDIA MARKETING")));},
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
