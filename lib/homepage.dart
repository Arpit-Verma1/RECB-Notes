import 'dart:io';
import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:major/pdfview.dart';
import 'package:major/upload.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'firebase_options.dart';

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({Key? key, required this.c,}) : super(key: key);
  final String c;

  @override
  State<MyHomePage1> createState() => _MyHomePageState1();
}

class _MyHomePageState1 extends State<MyHomePage1> {

  late Future<ListResult>? futureFiles;
  Map<int, double> downloadProgress = {};

  

  @override
  void initState() {
    super.initState();

    futureFiles = FirebaseStorage.instance.ref("${widget.c}").listAll();
  }
  Color shadowcolor1=Colors.purpleAccent.shade700;

bool icon=false;
int c=0;
  @override
  Widget build(BuildContext context){
    Size size=MediaQuery.of(context).size;
    final user=FirebaseAuth.instance.currentUser;
     return Scaffold(
       backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('${widget.c}',style: TextStyle(fontSize: 17),),
          backgroundColor: Colors.grey.shade600,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: OutlinedButton(
            style: OutlinedButton.styleFrom(
            shape: CircleBorder(),
       side: BorderSide(width: 3.0, color: Colors.white),
       backgroundColor: Colors.black,
       padding: EdgeInsets.all(10),
     ),
          onPressed: ()async{
          if("${user!.email!}"=="arpitv747@gmail.com"){
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar( 
                duration: Duration(seconds: 3),
                content: Text("You are authorized to upload ")));
         await Navigator.of(context).push(MaterialPageRoute(builder: (context)=>upload(a: "${widget.c}"))).then((value) => setState(() => {
          futureFiles = FirebaseStorage.instance.ref("${widget.c}").listAll()
          }));}else{
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar( backgroundColor: Colors.red,
                duration: Duration(seconds: 3),
                content: Text("You are not authorized to upload request authority to upload")));
          }}
        ,
          child: Icon(Icons.upload,size: 35,color: Colors.white,shadows: [Shadow(
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
            ),]),),
        body: Container(height: size.height,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/liight.jpeg"))),child:
        FutureBuilder<ListResult>(
          future: futureFiles,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final files = snapshot.data!.items;
              return ListView.builder(
                itemCount: files.length, itemBuilder: (context, index) {
                final file = files[index];
                double? progress = downloadProgress[index];

                return Column(children: [
                  Divider(),
                  Container(
                    child:
                    Column(
                        children: [
                          ClipRRect(

                            borderRadius: BorderRadius
                                .circular(15),
                            child: BackdropFilter(
                              filter: ImageFilter
                                  .blur(
                                  sigmaX: 15,
                                  sigmaY: 15),
                              child:
                              Container(
                                  width: size.width *
                                      0.8,
                                  height: size.height *
                                      0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.white
                                        .withOpacity(
                                        0.3),
                                    borderRadius: BorderRadius
                                        .circular(15),
                                    border: Border.all(
                                        width: 2,
                                        color: Colors
                                            .white30),
                                  ),
                                  child: ListTile(
                                    trailing: IconButton(
                                        icon: Icon(
                                          Icons.download,
                                          color: Colors.white,
                                        ),

                                        onPressed: () {
                                          openFile(index: index, ref: file);
                                        }),

                                    subtitle: progress!=null?LinearProgressIndicator(
                                      value: progress,
                                      color: Color.fromARGB(255,255,184,28),
                                      backgroundColor: Color.fromARGB(255,255,184,28),
                                    ):null,title:Text(file.name, style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight
                                        .bold,
                                    color: Colors
                                        .white,
                                  )),
                                  )
                              ),
                            ),
                          ),
                        ]
                    ),),]);
              }
                ,);
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('error'),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),)
      );}

  Future openFile({required int index, required Reference ref}) async {
    final file = await downloadfile(index, ref);
    final file1 = await downloadfile1(index, ref);
    if (file == null) return;
    OpenFile.open(file.path);
    OpenFile.open(file1.path);
  }

  Future<File?> downloadfile(int index, Reference ref) async {
    try {
      final url = await ref.getDownloadURL();
      final temdir = await getApplicationDocumentsDirectory();
      final path = File('${temdir.path}/${ref.name}');
      final response = await Dio().get(url,
          onReceiveProgress: (received,total){
        double progress=received/total;
        setState((){

          downloadProgress[index]=progress;
        });
          },
          options: Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
            receiveTimeout: 0,
          )
      );
      final ref1 = path.openSync(mode: FileMode.write);
      ref1.writeFromSync(response.data);
      await ref1.close();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Downloaded ${ref.name}')));
      return path;
    }
    catch (e) {
      return null;
    }
  }
  Future downloadfile1(int index, Reference ref) async {
    final url=await ref.getDownloadURL();
    Directory? directory;
    try {
      if (Platform.isAndroid) {
        if (await _requestPermission(Permission.storage)) {
          directory = await getExternalStorageDirectory();
          String newPath = "";
          print(directory);
          List<String> paths = directory!.path.split("/");
          for (int x = 1; x < paths.length; x++) {
            String folder = paths[x];
            if (folder != "Android") {
              newPath += "/" + folder;
            } else {
              break;
            }
          }
          newPath = newPath + "/RECB";
          directory = Directory(newPath);
        } else {
          return false;
        }
      } else {
        if (await _requestPermission(Permission.photos)) {
          directory = await getTemporaryDirectory();
        } else {
          return false;
        }
      }

      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }
      if (await directory.exists()) {
        File saveFile = File(directory.path + "/${ref.name}");
        await Dio().download(url, saveFile.path,
            options: Options(
              responseType: ResponseType.bytes,
              followRedirects: false,
              receiveTimeout: 0,)

        );
        print("$saveFile arpit");

      }

    }catch(e){
      print(e);
    }
    /////////////////////////////////////
  }
  Future<bool> _requestPermission(Permission permission) async {
    if (await permission.isGranted) {
      return true;
    } else {
      var result = await permission.request();
      if (result == PermissionStatus.granted) {
        return true;
      }
    }
    return false;
  }
}
class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 230, 122, 222)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(size.width*0.7958300,size.height*0.1316200);
    path0.cubicTo(size.width*0.8217200,size.height*0.1631800,size.width*0.8214300,size.height*0.1879800,size.width*0.8299700,size.height*0.2067600);
    path0.cubicTo(size.width*0.8577600,size.height*0.1861000,size.width*0.8734200,size.height*0.1915000,size.width*0.8818300,size.height*0.2016200);
    path0.cubicTo(size.width*0.8891300,size.height*0.2522000,size.width*0.8792200,size.height*0.2804000,size.width*0.8768300,size.height*0.3036200);
    path0.cubicTo(size.width*0.9133900,size.height*0.3372200,size.width*0.9117800,size.height*0.3588200,size.width*0.9158300,size.height*0.3696200);
    path0.cubicTo(size.width*0.9091800,size.height*0.4128400,size.width*0.8896100,size.height*0.4274600,size.width*0.8778300,size.height*0.4376200);
    path0.cubicTo(size.width*0.8879500,size.height*0.4971800,size.width*0.8842500,size.height*0.5194000,size.width*0.8818300,size.height*0.5436200);
    path0.quadraticBezierTo(size.width*0.8577500,size.height*0.5588600,size.width*0.8288300,size.height*0.5316200);
    path0.quadraticBezierTo(size.width*0.8173700,size.height*0.5904800,size.width*0.7968300,size.height*0.6116200);
    path0.cubicTo(size.width*0.7823800,size.height*0.5960400,size.width*0.7683000,size.height*0.5740000,size.width*0.7618300,size.height*0.5356200);
    path0.cubicTo(size.width*0.7473700,size.height*0.5408200,size.width*0.7327000,size.height*0.5592200,size.width*0.7108300,size.height*0.5427600);
    path0.cubicTo(size.width*0.7078400,size.height*0.5192600,size.width*0.7024300,size.height*0.4913400,size.width*0.7148300,size.height*0.4396200);
    path0.cubicTo(size.width*0.6988100,size.height*0.4288200,size.width*0.6770300,size.height*0.3992400,size.width*0.6758300,size.height*0.3736200);
    path0.cubicTo(size.width*0.6776000,size.height*0.3504200,size.width*0.6908300,size.height*0.3199800,size.width*0.7148300,size.height*0.3036200);
    path0.cubicTo(size.width*0.7113000,size.height*0.2826800,size.width*0.7031000,size.height*0.2556200,size.width*0.7098300,size.height*0.2016200);
    path0.cubicTo(size.width*0.7342300,size.height*0.1860200,size.width*0.7488300,size.height*0.2004200,size.width*0.7618300,size.height*0.2076200);
    path0.cubicTo(size.width*0.7652000,size.height*0.1897600,size.width*0.7686200,size.height*0.1646800,size.width*0.7958300,size.height*0.1316200);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
