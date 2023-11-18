import 'package:flutter/material.dart';
import 'package:flutter_ui_8/favorites.dart';
import 'package:flutter_ui_8/shorts.dart';
import 'package:flutter_ui_8/top_creators.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.black,
          useMaterial3: true,
          textTheme: TextTheme().apply(
            bodyColor: Colors.black,
            displayColor: Colors.black,
          ),
          fontFamily: GoogleFonts.poppins().fontFamily),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/5.jpg"),
              ),
            )
          ],
          centerTitle: true,
          title: Text(
            "Zirka",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        body: Column(
          children: [
            Shorts(),
            TopCreators(),
            Favorites(),
          ],
        ));
  }
}
