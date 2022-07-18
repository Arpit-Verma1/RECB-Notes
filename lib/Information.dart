import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:major/sample.dart';
import 'homepage.dart';
class It extends StatefulWidget {

  const It({Key? key, required this.a,}) : super(key: key);
  final String a ;

  @override
  State<It> createState() => _ItState();
}
@override
int c=0;
class _ItState extends State<It> {
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
                            leading: CircleAvatar(  foregroundImage: AssetImage("assets/architecture.png"),),
                            title: Text('Computer Organization and Architecture'),
                            tileColor: Color.fromARGB(255,255,222,205),
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(
                                color: Colors.black54,
                              )),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/second year/odd semester/Computer Organization and Architecture")));
                            },
                          ),SizedBox(height: 5,),
                          ListTile(
                            leading: CircleAvatar(  foregroundImage: AssetImage("assets/algo.png"),),
                            title: Text('Data Structure'),
                            tileColor: Color.fromARGB(255,255,222,205),
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(
                                  color: Colors.black54,
                                )),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/second year/odd semester/data structure")));
                            },
                          ),SizedBox(height: 5,),
                          ListTile(
                            leading: CircleAvatar(  foregroundImage: AssetImage("assets/architecture.png"),),
                            title: Text('Discrete Structures & Theory of Logic'),
                            tileColor: Color.fromARGB(255,255,222,205),
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(
                                  color: Colors.black54,
                                )),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/second year/odd semester/discrete structures & theory of logic")));
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/second year/odd semester/uiversal hman vlues")));
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/second year/odd semester/mathematics4")));
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
                                          ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/ai1.png"),),
                                            title: Text('Application of Soft Computing'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              side: BorderSide(
                                                color: Colors.black54,
                                              ),),
                                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/third year/odd semester/application of soft computing")));},
                                          ),
                                          SizedBox(height: 9,),
                                          ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/compiler.png"),),
                                            title: Text('Compiler Design'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              side: BorderSide(
                                                color: Colors.black54,
                                              ),),
                                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/third year/odd semester/compiler design")));},
                                          ),
                                          SizedBox(height: 7,),
                                          ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/programming.png"),),
                                            title: Text('DataBAse Management System'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              side: BorderSide(
                                                color: Colors.black54,
                                              ),),
                                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/third year/odd semester/database management system")));},
                                          ),
                                          SizedBox(height: 7,),
                                          ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/algo.png"),),
                                            title: Text('Design And Analysis Of Algorithim'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              side: BorderSide(
                                                color: Colors.black54,
                                              ),),
                                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/third year/odd semester/design and analysis of algorithim")));},
                                          ),
                                          SizedBox(height: 7,),
                                          ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/programming.png"),),
                                            title: Text('web technology'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              side: BorderSide(
                                                color: Colors.black54,
                                              ),),
                                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/third year/odd semester/web technology")));},
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
                                          SizedBox(height: 7,),
                                          ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/ai1.png"),),
                                            title: Text('	Cloud Computing'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              side: BorderSide(
                                                color: Colors.black54,
                                              ),),
                                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/first year/odd semester/cloud computing")));},
                                          ),
                                          SizedBox(height: 7,),
                                          ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/architecture.png"),),
                                            title: Text('RENEWABLE ENERGY RESOURCES'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              side: BorderSide(
                                                color: Colors.black54,
                                              ),),
                                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/first year/odd semester/renewable energy resources")));},
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
                                            leading: CircleAvatar(  foregroundImage: AssetImage("assets/programming.png"),),
                                            title: Text('Web Designing'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                                borderRadius: BorderRadius.circular(12),
                                                side: BorderSide(
                                                  color: Colors.black54,
                                                )),
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/second year/even semester/web designing")));
                                            },
                                          ),SizedBox(height: 5,),
                                          ListTile(
                                            leading: CircleAvatar(  foregroundImage: AssetImage("assets/operating.png"),),
                                            title: Text('operating system'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                                borderRadius: BorderRadius.circular(12),
                                                side: BorderSide(
                                                  color: Colors.black54,
                                                )),
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/second year/even semester/operating system")));
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
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/second year/even semester/technical communication")));
                                            },
                                          ),SizedBox(height: 5,),
                                          ListTile(
                                            leading: CircleAvatar(  foregroundImage: AssetImage("assets/ai.png"),),
                                            title: Text('Theory of automata'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                                borderRadius: BorderRadius.circular(12),
                                                side: BorderSide(
                                                  color: Colors.black54,
                                                )),
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/second year/even semester/theory of automata")));
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
                                          ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/architecture.png"),),
                                            title: Text('Computer Network'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              side: BorderSide(
                                                color: Colors.black54,
                                              ),),
                                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/third year/even semester/computer network")));},
                                          ),
                                          SizedBox(height: 9,),
                                          ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/programming.png"),),
                                            title: Text('Data Analytics'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              side: BorderSide(
                                                color: Colors.black54,
                                              ),),
                                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/third year/even semester/data analytics")));},
                                          ),
                                          SizedBox(height: 7,),
                                          ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/compiler.png"),),
                                            title: Text('Image Processing'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              side: BorderSide(
                                                color: Colors.black54,
                                              ),),
                                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/third year/even semester/image processing")));}
                                          ),
                                          SizedBox(height: 7),
                                          ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/ai.png"),),
                                            title: Text('Software Engineering'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              side: BorderSide(
                                                color: Colors.black54,
                                              ),),
                                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/third year/even semester/software engineering")));},
                                          ),
                                          SizedBox(height: 7,),
                                          ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/soft.png"),),
                                            title: Text('Idea to business model'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              side: BorderSide(
                                                color: Colors.black54,
                                              ),),
                                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/third year/odd semester/idea to business model")));},
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
                                          ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/programming.png"),),
                                            title: Text('Big Data'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              side: BorderSide(
                                                color: Colors.black54,
                                              ),),
                                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/fourth year/even semester/big data")));},
                                          ),
                                          SizedBox(height: 9,),
                                          ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/compiler.png"),),
                                            title: Text('Natural Language Processing'),
                                            tileColor: Color.fromARGB(255,255,222,205),
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              side: BorderSide(
                                                color: Colors.black54,
                                              ),),
                                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/fourth year/even semester/natural language processing")));},
                                          ),
                                          SizedBox(height: 7,),
                                          ListTile(leading: CircleAvatar(  foregroundImage: AssetImage("assets/architecture.png"),),
                                              title: Text('Rural Development: Administration and Planning'),
                                              tileColor: Color.fromARGB(255,255,222,205),
                                              shape: BeveledRectangleBorder(
                                                borderRadius: BorderRadius.circular(12),
                                                side: BorderSide(
                                                  color: Colors.black54,
                                                ),),
                                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage1(c: "/information technology/fourth year/even semester/rural development: administration and planing")));}
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
