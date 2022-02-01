import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_slide_puzzle/Homepage.dart';

void main() {
  runApp(const MyApp()); //Uygulama burdan başlıyor
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        //Aydınlık tema
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.black,
        ),
        cardColor: Colors.blue,
      ),
      darkTheme: ThemeData.dark().copyWith(
        //Karanlık tema
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
        ),
        cardColor: Colors.blue.shade900,
      ),
      debugShowCheckedModeBanner: false,
      scrollBehavior: CupertinoScrollBehavior(), //Apple gibi scroll teması
      home: Homepage(), //Anasayfaya gidiş
    );
  }
}
