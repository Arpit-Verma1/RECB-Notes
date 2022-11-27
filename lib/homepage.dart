import 'dart:io';
import 'dart:ui';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:major/speechapi.dart';
import 'package:major/upload.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'Utils.dart';
import 'firebase_options.dart';

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({Key? key, required this.c}) : super(key: key);
  final String c;

  @override
  State<MyHomePage1> createState() => _MyHomePageState1();
}

class _MyHomePageState1 extends State<MyHomePage1> {
  int user = 0;
  late int i;
  List<String> users = ["arpitv747@gmail.com",];
  late Future<ListResult>? futureFiles;
  Map<int, double> downloadProgress = {};
  bool equalsIgnoreCase(String string1, String string2) {
    return string1?.toLowerCase() == string2?.toLowerCase();
  }
  @override
  void initState() {
    super.initState();
    _dbref = FirebaseDatabase.instance.ref();
    _readdb1();
    futureFiles = FirebaseStorage.instance.ref("${widget.c}").listAll();
  }

  Color shadowcolor1 = Colors.purpleAccent.shade700;

  bool icon = false;
  int c = 0;
  bool islistening=false;
  late DatabaseReference _dbref;
  String databasejson = "";
  int count = 0;
  TextEditingController controller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(

          title: Text(widget.c),
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
          onPressed: () async {
              if (true == databasejson.contains("${user!.email!}")) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(
                    duration: Duration(seconds: 3),
                    content: Text("You are authorized to upload ")));
                await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => upload(a: "${widget.c}"))).then((
                    value) =>
                    setState(() =>
                    {
                      futureFiles =
                          FirebaseStorage.instance.ref("${widget.c}").listAll()
                    }));

              }
            else {
              print(databasejson.contains("${user!.email!}"));
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(backgroundColor: Colors.red,
                  duration: Duration(seconds: 3),
                  content: Text(
                      "You are not authorized to upload request authority to upload")));
            }
          },
          child: Icon(
              Icons.upload, size: 35, color: Colors.white, shadows: [Shadow(
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
          ]),),
        body:
        Container(height: size.height,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/liight.jpeg"))),
          child:
              Column(children: [Container(color: Colors.transparent,
    child:
    Padding(padding: EdgeInsets.only(left: 20,top: 8),child:
    Row(
    children: [
    SizedBox(width: size.width*0.7,
    height: size.height*0.07,

    child:
    TextField(
    controller: controller,
      style: TextStyle(color: Colors.white),
    decoration: new InputDecoration(
enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color:Colors.white,width: 2)),
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide: BorderSide(
    color: Colors.white
    ,width: 2
    ),
    ),

    contentPadding:
    EdgeInsets.only(top: 10,bottom: 10),prefixIcon: Icon(Icons.search,color: Colors.white,),
    filled: false,
    hintText: 'Search Your Notes',

    hintStyle: TextStyle(color: Colors.white),


    ),
    )),
    SizedBox(
    width: size.width*0.02,
    ),
      AvatarGlow(  animate:islistening, endRadius:40,glowColor: Colors.white,showTwoGlows: true,
        child:
    SizedBox(
    width: size.width*0.15,
    height: size.height*0.07,
    child:
    ElevatedButton(
    style: ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(55.0),
    side: BorderSide(width:2, color:Colors.white),
    ),
    ),
    backgroundColor:  MaterialStateProperty.all<Color>(Colors.transparent)
    ),
    onPressed: (

    ){
      togglerecording();
    }, child:Icon(islistening?Icons.mic:Icons.mic_none,size: 25,color: Colors.white,),
    )),),

    ]
    ))),

                Expanded(child:
          FutureBuilder<ListResult>(
            future: futureFiles,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final files = snapshot.data!.items;
                return ListView.builder(
                    itemCount: files.length, itemBuilder: (context, index) {
                  final file = files[index];
                  double? progress = downloadProgress[index];
                  final String a=file.name.toLowerCase();
                  return Column(children: [
                    Divider(),
                    Visibility(visible: a.contains(controller.text.toLowerCase()),
                    child: Container(
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

                                      /*IconButton(
                                          icon: Icon(
                                            Icons.heart_broken,
                                            color: Colors.white,
                                          ),

                                          onPressed: () {

                                          })*/
trailing:IconButton(
                                              icon: Icon(
                                                Icons.download,
                                                color: Colors.white,
                                              ),

                                              onPressed: () {
                                                updateone(widget.c,
                                                    file.name.substring(
                                                        0, file.name.indexOf('.')));
                                                openFile(index: index, ref: file);
                                              }),

                                      subtitle: progress != null
                                          ? LinearProgressIndicator(
                                        value: progress,
                                        color: Color.fromARGB(
                                            255, 255, 184, 28),
                                        backgroundColor: Color.fromARGB(
                                            255, 255, 184, 28),

                                      )
                                          : null,

                                      title: Text(file.name, style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight
                                            .bold,
                                        color: controller.text==file.name ?Colors.red:Colors
                                            .white,
                                      )),
                                    )
                                ),
                              ),
                            ),
                          ]
                      ),),
                    )
                  ]);
                }

                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text('error'),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },


    )),]))
    );
  }

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
          onReceiveProgress: (received, total) {
            double progress = received / total;
            setState(() {
              downloadProgress[index] = progress;
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
    final url = await ref.getDownloadURL();
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
      }
    } catch (e) {
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

  updateone(String a, String b) {
   _dbref.child(a).child(b).once().then((DatabaseEvent databaseEvent) {
     setState((){
       int k=databaseEvent.snapshot.value==null?0:databaseEvent.snapshot.value as int;
       if(k==null){
         setState(() {
           k=1;
         });
       }
       _dbref.child(a).update({b:k + 1});
     });
   });

  }
  
  _readdb1(){
    _dbref.child('User').once().then((DatabaseEvent databaseEvent) {
      setState((){
        databasejson=databaseEvent.snapshot.value.toString();
      });
    });
  }
  Future togglerecording()=>Speechapi.togglerecording(onresult:  (text)=>setState(()=>this.controller.text=text,),
  onlistening: (islistening){
  setState(()=>this.islistening=islistening);


  }

  );
}
