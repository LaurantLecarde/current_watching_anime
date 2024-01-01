import 'package:current_watching_anime/drawer_scrn/miracul_scrn.dart';
import 'package:current_watching_anime/drawer_scrn/tv_movies.dart';
import 'package:current_watching_anime/drawer_scrn/upcoming_scrn.dart';
import 'package:current_watching_anime/search_barrrrrrrrrrrrrrrrrrrrrrr.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';

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
      theme: ThemeData.dark(
        useMaterial3: true
      ),
      home: const MainPage(),
    );
  }
}
