import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Utils{
  static GlobalKey<ScaffoldMessengerState> messengerKey=GlobalKey<ScaffoldMessengerState>();
  static showSnackBar(String?text){

    if(text==null)return;
    final snackbar=SnackBar(content:Text(text),backgroundColor: Colors.red);
    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackbar);
  }

}



