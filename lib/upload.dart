import 'dart:async';
import 'dart:io';
import 'dart:math' as math;
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class upload extends StatefulWidget {
  const upload({Key? key, required this.a}) : super(key: key);
final String a;
  @override
  State<upload> createState() => _uploadState();

}

class _uploadState extends State<upload> {
  PlatformFile?pickedFile;
  UploadTask?uploadTask;
  Future selectFile()async{
    final result =await FilePicker.platform.pickFiles();
    if(result==null) return;
    setState((){
      pickedFile=result.files.first;
    });

  }
  double percent = 0.0;
  @override

  Future uploadFile()async{
    final path='${widget.a}/${pickedFile!.name}';
    final file=File(pickedFile!.path!);
    final ref=FirebaseStorage.instance.ref().child(path);
    setState((){
      uploadTask=ref.putFile(file);
    });

    final snapshot= await uploadTask!.whenComplete((){});
    final urlDownload=await snapshot.ref.getDownloadURL();
    print('Download link $urlDownload');
    setState((){
      uploadTask=null ;
    });
  }
  @override
  Widget build(BuildContext context){

    return
    Scaffold(
      backgroundColor: Color.fromARGB(255,255,222,205),
      body:Container(

        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
    color: Color.fromARGB(255,255,222,205),
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

    height: 300,

    width: double.infinity,

    // color: Colors.black,

    child: Stack(children: [

    Container(

    height: 250,

    decoration: BoxDecoration(

    image: DecorationImage(



    fit: BoxFit.cover,

    image: AssetImage('assets/recb.jpg')),

    color: Colors.grey.shade900,

    boxShadow: [BoxShadow(blurRadius: 15)],

    borderRadius: BorderRadius.only(

    bottomRight: Radius.circular(50),
    bottomLeft:Radius.circular(50), )),


    padding: EdgeInsets.all(10),

    width: double.infinity,

    ),

    Positioned(
    bottom: 0,
    left: 120,
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

    Container(

    height: MediaQuery.of(context).size.height*0.55,
    width: MediaQuery.of(context).size.width,


    // width: 150,

    margin:

    EdgeInsets.symmetric(horizontal: 15, vertical: 5),

    alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            if(pickedFile!=null)

                    Container(
                      decoration: BoxDecoration(color: Color.fromARGB(255,255,183,195),
                        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(blurRadius: 4,color: Colors.black)]
                      ),

                      child: Padding(padding: EdgeInsets.all(10),child: Text(pickedFile!.name,style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          shadows: [
                            Shadow(
                              color: Colors.blue,
                              blurRadius: 3,
                            ),
                            Shadow(
                              color:  Colors.blue,
                              blurRadius: 6,
                            ),
                            Shadow(
                              color:  Colors.blue,
                              blurRadius: 9,
                            ),
                          ],
                          fontFamily: 'MsMadi',
                          color: Colors.white
                      ),),)


              ),
            const SizedBox(height: 32),GestureDetector(onTap: selectFile,child:
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width*0.4,
          decoration: BoxDecoration(

              borderRadius: BorderRadius.only(

                  bottomRight: Radius.circular(30),

                  bottomLeft: Radius.circular(30),

                  topLeft: Radius.circular(30),

                  topRight: Radius.circular(30)),

              color:Color.fromARGB(255,255,183,195),

              boxShadow: [BoxShadow(blurRadius: 4)]),

          // width: 150,

          margin:

          EdgeInsets.symmetric(horizontal: 2, vertical: 5),

       alignment: Alignment.center,
          child: Text("select file",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              shadows: [
                Shadow(
                  color: Colors.blue,
                  blurRadius: 3,
                ),
                Shadow(
                  color:  Colors.blue,
                  blurRadius: 6,
                ),
                Shadow(
                  color:  Colors.blue,
                  blurRadius: 9,
                ),
              ],
              fontFamily: 'MsMadi',
              color: Colors.white
          ),)),),
        GestureDetector(onTap: uploadFile,child:
        Container(

          height: 40,
          width: MediaQuery.of(context).size.width*0.4,

          decoration: BoxDecoration(

              borderRadius: BorderRadius.only(

                  bottomRight: Radius.circular(30),

                  bottomLeft: Radius.circular(30),

                  topLeft: Radius.circular(30),

                  topRight: Radius.circular(30)),

              color:Color.fromARGB(255,255,183,195),

              boxShadow: [BoxShadow(blurRadius: 4)]),

          // width: 150,

          margin:

          EdgeInsets.symmetric(horizontal: 2, vertical: 5),

          alignment: Alignment.center,
          child:
           Text("Upload file",style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 30,
               shadows: [
                 Shadow(
                   color: Colors.blue,
                   blurRadius: 3,
                 ),
                 Shadow(
                   color:  Colors.blue,
                   blurRadius: 6,
                 ),
                 Shadow(
                   color:  Colors.blue,
                   blurRadius: 9,
                 ),
               ],
               fontFamily: 'MsMadi',
               color: Colors.white
           ), )),),
            buildprogress(),
          ],
        ),
      ),]))
      ) );
  }
  Widget buildprogress()=>StreamBuilder<TaskSnapshot>(
      stream: uploadTask?.snapshotEvents,
      builder: (context,snapshot){
        if(snapshot.hasData){
          final data=snapshot.data!;
          double progress=data.bytesTransferred/data.totalBytes;
          return SizedBox(
            height: 50,
            child:
                Container(
                  margin:
                  EdgeInsets.symmetric(horizontal: 65, vertical: 5),

                    alignment: Alignment.center,
                    child:LinearPercentIndicator( //leaner progress bar
                      width: 200, //width for progress bar
                      animation: true, //animation to show progress at first
                      animationDuration: 1000,
                      lineHeight: 30.0, //height of progress bar

                      percent: progress, // 30/100 = 0.3
                        barRadius: const Radius.circular(30),
                      center: Text('${(100*progress).roundToDouble()}%'),

                      progressColor:  Color.fromARGB(255,255,184,28), //percentage progress bar color
                      backgroundColor:  Colors.white  //background progressbar color
                    )));

        }else {
          return const SizedBox(height: 50);
        }
      });
}
