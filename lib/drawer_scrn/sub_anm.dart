import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../search_barrrrrrrrrrrrrrrrrrrrrrr.dart';

class SubAnime extends StatefulWidget {
  const SubAnime({super.key});

  @override
  State<SubAnime> createState() => _SubAnimeState();
}

class _SubAnimeState extends State<SubAnime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon:const Icon(CupertinoIcons.back),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.search),onPressed: (){
            Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const MySearchBar()));
          },),
          IconButton(icon:const Icon(Icons.bookmark_border_outlined),onPressed:(){})
        ],
        iconTheme: const IconThemeData(color: Colors.grey),
        centerTitle: true,
        backgroundColor: const Color(0xFF282727),
        title: const Text('Sub Anime',style: TextStyle(color: Colors.grey),),
      ),
    );
  }
}
