import 'package:flutter/material.dart';
import 'package:whatsapp/Communities.dart';
import 'package:whatsapp/call.dart';
import 'package:whatsapp/chats.dart';
import 'package:whatsapp/update.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chat(),
      
    );
  }
}

