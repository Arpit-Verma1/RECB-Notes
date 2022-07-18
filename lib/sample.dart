import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:major/civil.dart';
import 'package:major/portfolio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Information.dart';
import 'electrical.dart';
import 'homepage.dart';
final Uri _url = Uri.parse('https://www.facebook.com/recbup/');
final Uri _url1 = Uri.parse('https://twitter.com/recb_up');
final Uri _url2 = Uri.parse('https://www.linkedin.com/company/rajkiya-engineering-college-bijnor/');
final Uri _url3 = Uri.parse('https://www.instagram.com/recbup/');

class Sample extends StatefulWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  Color shadowcolor1=Colors.purpleAccent.shade700;
  List<String> items=["Information Technology","Electrical Engineering","Civil Engineering"];
  List<String> items1=["Information Technology","Electrical Engineering","Civil Engineering"];
  List<String> items2=["Information Technology","Electrical Engineering","Civil Engineering"];
  List<String> items3=["Information Technology","Electrical Engineering","Civil Engineering"];
  String?selecteditem=null;
  String?selecteditem1=null;
  String?selecteditem2=null;
  String?selecteditem3=null;
  int c=0;
  String a="";
  int index1 =0;

   final branch=[
    It(a: "First year",),
     It(a: "Second year",),
     It(a: "Third year",),
     It(a: "Fourth year",),
     EE(a: "First year"),
     EE(a: "Second year"),
     EE(a: "Third year"),
     EE(a: "Fourth year"),
     Civil(a: "First year"),
     Civil(a: "Second year"),
     Civil(a: "Third year"),
     Civil(a: "Fourth year"),
  ];
  bool _iconbool=false;
  IconData _iconlight=Icons.sunny;
  DateTime timebackpressed=DateTime.now();
  IconData _icondarkt=Icons.nights_stay;
  ThemeData _lighttheme=ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
  );
  ThemeData _darktheme=ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: _iconbool?_darktheme:_lighttheme,
        debugShowCheckedModeBanner: false,
        home:
      Scaffold(

      appBar:AppBar(
        title: Text(index1==0?"First Year Information Technology"
            :index1==1?"Second year Information Technology"
            :index1==2?"Third year Information Technology"
        :index1==3?"Fourth year Information Technology"
            :index1==4?"First year electrical engineerinng"
            :index1==5?"Second year electrical engineerinng"
        :index1==6?"Third Year electrical engineerinng"
            :index1==6?"Fourth year electrical engineerinng"
            :index1==8?"First year civil engineerinng"
        :index1==9?"Second civil engineerinng"
            :index1==10?"Third year civil engineerinng"
            :"Fourth year civil engineerinng"),
        actions: [
          IconButton(onPressed:(){
            setState((){
              _iconbool=!_iconbool;
            });
          }, icon: Icon(_iconbool?_iconlight:_icondarkt,),)
        ],
      ),
    drawer: Drawer(
      elevation: 20,
        width: MediaQuery.of(context).size.width*0.86,
        shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
      topRight: Radius.circular(30),
        bottomRight: Radius.circular(30)),
    ),
        child:Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey,
          boxShadow: [
          BoxShadow(
          color: Colors.grey,
          offset: const Offset(
            5.0,
            5.0,
          ),
          blurRadius: 10.0,
          spreadRadius: 1.0,
        ),
          BoxShadow(
            color: Colors.grey,
            offset: const Offset(
              -5.0,
              -5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          ),//BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), ]
        ),
        child:SingleChildScrollView(
          child: Column(
            children: [
              Container(

                height: 200,

                width: double.infinity,

                // color: Colors.black,

                child: Stack(children: [

                  Container(

                      height: 150,

                      decoration: BoxDecoration(

                          image: DecorationImage(

                              colorFilter: ColorFilter.mode(

                                  Colors.black.withOpacity(.8),

                                  BlendMode.darken),

                              fit: BoxFit.cover,

                              image: AssetImage('assets/recb.jpg')),

                          color: Colors.grey.shade900,

                          boxShadow: [BoxShadow(blurRadius: 15)],

                          borderRadius: BorderRadius.only(

                              bottomRight: Radius.circular(150))),

                      padding: EdgeInsets.all(10),

                      width: double.infinity,

                      ),

                  Positioned(
                    bottom: 0,
                    left: 50,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: 100,
                          width: 100,

                          decoration: BoxDecoration(

                            image: DecorationImage(

                                fit: BoxFit.cover,

                                image: AssetImage('assets/logo.png')),

                            color: Colors.grey,

                            shape: BoxShape.circle,

                            boxShadow: [

                              BoxShadow(blurRadius: 7, offset: Offset(0, 3))

                            ],

                          )),

                    ),

                  ),

                ]),

              ),
          SizedBox(height: 20,),

          Container(

            height: 40,
            width: MediaQuery.of(context).size.width,

            decoration: BoxDecoration(

                borderRadius: BorderRadius.only(

                    bottomRight: Radius.circular(30),

                    bottomLeft: Radius.circular(30),

                    topLeft: Radius.circular(30),

                    topRight: Radius.circular(30)),

                color: Colors.grey.shade900,

                boxShadow: [BoxShadow(blurRadius: 4)]),

            // width: 150,

            margin:

            EdgeInsets.symmetric(horizontal: 15, vertical: 5),

            alignment: Alignment.center,
              child:
              Row(
                  children: [Padding(padding: EdgeInsets.only(left: 5,right: 5)),
                    Text('First Year',
                    style: TextStyle(

                        fontSize: 12.5,

                        color: Colors.white,

                        fontWeight: FontWeight.w600),),
                    SizedBox(
                      width: 15,
                    ),
                    DropdownButton2<String>(
                        hint: Text('Select branch',
                          style: TextStyle(

                              fontSize: 12.5,

                              color: Colors.white,

                              fontWeight: FontWeight.w600),),

                        items: items.map((item) =>DropdownMenuItem<String>(
                          value: item,
                          child: Text(item,style:TextStyle(
                              fontWeight: FontWeight.bold,

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
                              ],
                              fontFamily: 'Pacifico',
                              color: Colors.white
                          ),),
                        )).toList(),
                        itemHeight: 50,
                        buttonWidth: MediaQuery.of(context).size.width*0.55,
                        dropdownDecoration: BoxDecoration(

                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        onChanged: (item){
                          setState((){
                            selecteditem=item;
                            selecteditem1=null;
                            selecteditem2=null;
                            selecteditem3=null;
                            switch(selecteditem){
                              case "Information Technology" :
                               setState((){
                                index1=0;
                               });
                                break;
                              case "Electrical Engineering" :
                                setState((){
                                  index1=4;
                                });
                                break;
                              case "Civil Engineering" :
                                setState((){
                                  index1=8;
                                });
                                break;
                            }

                          });
                        },
                        value: selecteditem),]),),
          Container(

            height: 40,
            width: MediaQuery.of(context).size.width,

            decoration: BoxDecoration(

                borderRadius: BorderRadius.only(

                    bottomRight: Radius.circular(30),

                    bottomLeft: Radius.circular(30),

                    topLeft: Radius.circular(30),

                    topRight: Radius.circular(30)),

                color: Colors.grey.shade900,

                boxShadow: [BoxShadow(blurRadius: 4)]),

            // width: 150,

            margin:

            EdgeInsets.symmetric(horizontal: 15, vertical: 5),

            alignment: Alignment.center,
            child:
              Row(
                  children: [Padding(padding: EdgeInsets.only(left: 5,)),
                    Text('Second Year'
                    ,style: TextStyle(

                        fontSize: 12.5,

                        color: Colors.white,

                        fontWeight: FontWeight.w600),
),SizedBox(width: 5,),

                    DropdownButton2<String>(
                        hint: Text('Select Branch',style: TextStyle(

                            fontSize: 12.5,

                            color: Colors.white,

                            fontWeight: FontWeight.w600),),
                        items: items1.map((item) =>DropdownMenuItem<String>(
                          value: item,
                          child: Text(item,style:TextStyle(
                              fontWeight: FontWeight.bold,

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
                              ],
                              fontFamily: 'Pacifico',
                              color: Colors.white
                          ),),
                        )).toList(),
                        itemHeight: 50,
                        buttonWidth: MediaQuery.of(context).size.width*0.55,
                        dropdownDecoration: BoxDecoration(

                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        onChanged: (item){
                          setState((){
                            selecteditem1=item;
                            selecteditem=null;
                            selecteditem2=null;
                            selecteditem3=null;
                            switch(selecteditem1){
                              case "Information Technology" :
                                setState((){
                                  index1=1;
                                });
                                break;
                              case "Electrical Engineering" :
                                setState((){
                                  index1=5;
                                });
                                break;
                              case "Civil Engineering" :
                                setState((){
                                  index1=9;
                                });
                                break;
                            }

                          });
                        },
                        value: selecteditem1),]),),
          Container(

            height: 40,
            width: MediaQuery.of(context).size.width*0.9,

            decoration: BoxDecoration(

                borderRadius: BorderRadius.only(

                    bottomRight: Radius.circular(30),

                    bottomLeft: Radius.circular(30),

                    topLeft: Radius.circular(30),

                    topRight: Radius.circular(30)),

                color: Colors.grey.shade900,

                boxShadow: [BoxShadow(blurRadius: 4)]),

            // width: 150,

            margin:

            EdgeInsets.symmetric(horizontal: 15, vertical: 5),

            alignment: Alignment.center,
            child:
              Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 5,right: 5)),
                    Text('Third Year',style: TextStyle(

                  fontSize: 12.5,

                  color: Colors.white,

                  fontWeight: FontWeight.w600),),
                    SizedBox(width:9),
                    DropdownButton2<String>(
                        hint: Text('Select Branch',style: TextStyle(

                            fontSize: 12.5,

                            color: Colors.white,

                            fontWeight: FontWeight.w600),),
                        items: items2.map((item) =>DropdownMenuItem<String>(

                          value: item,
                          child: Text(item,style:TextStyle(
                              fontWeight: FontWeight.bold,

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
                              ],
                              fontFamily: 'Pacifico',
                              color: Colors.white
                          ),),
                        )).toList(),
                        itemHeight: 50,
                        buttonWidth: MediaQuery.of(context).size.width*0.55,
                        dropdownDecoration: BoxDecoration(

                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        onChanged: (item){
                          setState((){
                            selecteditem2=item;
                            selecteditem1=null;
                            selecteditem=null;
                            selecteditem3=null;
                            switch(selecteditem2){
                              case "Information Technology" :
                                setState((){
                                  index1=2;
                                });
                                break;
                              case "Electrical Engineering" :
                                setState((){
                                  index1=6;
                                });
                                break;
                              case "Civil Engineering" :
                                setState((){
                                  index1=10;
                                });
                                break;
                            }
                          });
                        },
                        value: selecteditem2),]),),
          Container(

            height: 40,
            width: MediaQuery.of(context).size.width*0.9,

            decoration: BoxDecoration(

                borderRadius: BorderRadius.only(

                    bottomRight: Radius.circular(30),

                    bottomLeft: Radius.circular(30),

                    topLeft: Radius.circular(30),

                    topRight: Radius.circular(30)),

                color: Colors.grey.shade900,

                boxShadow: [BoxShadow(blurRadius: 4)]),

            // width: 150,

            margin:

            EdgeInsets.symmetric(horizontal: 15, vertical: 5),

            alignment: Alignment.center,
            child:
              Row(
                  children: [Padding(padding: EdgeInsets.only(left: 5,right: 5)),
                    Text('Fourth Year',style: TextStyle(

                  fontSize: 12.5,

                  color: Colors.white,

                  fontWeight: FontWeight.w600),), SizedBox(width:5),
                    DropdownButton2<String>(

                        hint: Text('Select Branch',style: TextStyle(

                            fontSize: 12.5,

                            color: Colors.white,

                            fontWeight: FontWeight.w600),),
                        items: items3.map((item) =>DropdownMenuItem<String>(
                          value: item,
                          child: Text(item,style:TextStyle(
                              fontWeight: FontWeight.bold,

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
                              ],
                              fontFamily: 'Pacifico',
                              color: Colors.white
                          ),),
                        )).toList(),
                        itemHeight: 50,
                        buttonWidth: MediaQuery.of(context).size.width*0.55,
                        dropdownDecoration: BoxDecoration(

                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        onChanged: (item){
                          setState((){
                            selecteditem3=item;
                            selecteditem1=null;
                            selecteditem2=null;
                            selecteditem=null;
                            switch(selecteditem3){
                              case "Information Technology" :
                                setState((){
                                  index1=3;
                                });
                                break;
                              case "Electrical Engineering" :
                                setState((){
                                  index1=7;
                                });
                                break;
                              case "Civil Engineering" :
                                setState((){
                                  index1=11;
                                });
                                break;
                            }
                          });
                        },
                        value: selecteditem3),])),
    Container(

    height: 40,
    width: MediaQuery.of(context).size.width,

    decoration: BoxDecoration(

    borderRadius: BorderRadius.only(

    bottomRight: Radius.circular(30),

    bottomLeft: Radius.circular(30),

    topLeft: Radius.circular(30),

    topRight: Radius.circular(30)),

    color: Colors.grey.shade900,

    boxShadow: [BoxShadow(blurRadius: 4)]),

    // width: 150,

    margin:

    EdgeInsets.symmetric(horizontal: 15, vertical: 5),

    alignment: Alignment.center,
    child:
   Padding(padding: EdgeInsets.only(left: 5),child:GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>File1()));},child:
    Text('About Developer'
    ,style: TextStyle(

    fontSize: 15,

    color: Colors.white,

    fontWeight: FontWeight.w600)))

            ,),
        ),
             Container(

                  height: 60,
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.only(

                          bottomRight: Radius.circular(30),

                          bottomLeft: Radius.circular(30),

                          topLeft: Radius.circular(30),

                          topRight: Radius.circular(30)),

                      color: Colors.grey,

                      ),

                  // width: 150,

                  margin:

                  EdgeInsets.symmetric(horizontal: 30, vertical: 5),

                  alignment: Alignment.center,
                  child:
                  Padding(padding: EdgeInsets.only(left: 5),child:
              Row(
                children: [
                  IconButton(onPressed: ()async{

        if(await canLaunchUrl(_url)){
        await launchUrl(_url);
        }
        }, icon:Icon(FontAwesomeIcons.facebook,
                    size:40.0,color: Colors.blue,)),SizedBox(width: 5,)
                  ,IconButton(onPressed: ()async{

          if(await canLaunchUrl(_url1)){
            await launchUrl(_url1);
          }
        },icon:Icon(FontAwesomeIcons.twitter,
                    size:40.0,color: Colors.blue,)),SizedBox(width: 5,),
                  IconButton(onPressed:()async{

                    if(await canLaunchUrl(_url2)){
                      await launchUrl(_url2);
                    }
                  }, icon: Icon(FontAwesomeIcons.linkedin,
                    size:40.0,color: Colors.blue,),),SizedBox(width: 5,),
                  IconButton(onPressed:()async{

                    if(await canLaunchUrl(_url3)){
                      await launchUrl(_url3);
                    }
                  }, icon:Icon(FontAwesomeIcons.instagram,
                    size:40.0,color: Colors.purpleAccent,))
                ],
              )))
            ]
      ),),
      ) ), body:branch[index1],));
  }

  Future getFileType(file)
  {

    return file.stat();

  }

}
