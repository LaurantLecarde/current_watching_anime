import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../search_barrrrrrrrrrrrrrrrrrrrrrr.dart';

class DubAnime extends StatefulWidget {
  const DubAnime({super.key});

  @override
  State<DubAnime> createState() => _DubAnimeState();
}

class _DubAnimeState extends State<DubAnime> {
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
        title: const Text('Dub Anime',style: TextStyle(color: Colors.grey),),
      ),
    );
  }
}
