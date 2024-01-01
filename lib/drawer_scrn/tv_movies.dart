import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../search_barrrrrrrrrrrrrrrrrrrrrrr.dart';

class TvMovies extends StatefulWidget {
  const TvMovies({super.key});

  @override
  State<TvMovies> createState() => _TvMoviesState();
}

class _TvMoviesState extends State<TvMovies> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
          title: const Text('TV Movies',style: TextStyle(color: Colors.grey),),
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.blueGrey,
            tabs: [
              Tab(child: Center(child: Text('Animes'))),
              Tab(child: Center(child: Text('Miraculous')))
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(CupertinoIcons.ant_fill),
            Icon(CupertinoIcons.chart_pie),
          ],
        ),
      ),
    );
  }
}
