import 'package:current_watching_anime/bottom_navigation_bar_sc/all.dart';
import 'package:current_watching_anime/bottom_navigation_bar_sc/watching.dart';
import 'package:current_watching_anime/drawer_scrn/dub_anm.dart';
import 'package:current_watching_anime/drawer_scrn/miracul_scrn.dart';
import 'package:current_watching_anime/drawer_scrn/sub_anm.dart';
import 'package:current_watching_anime/drawer_scrn/tv_movies.dart';
import 'package:current_watching_anime/drawer_scrn/upcoming_scrn.dart';
import 'package:current_watching_anime/search_barrrrrrrrrrrrrrrrrrrrrrr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottom_navigation_bar_sc/favourite.dart';
import 'bottom_navigation_bar_sc/finished.dart';
import 'drawer_scrn/manga_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  TextStyle optionStyle = const TextStyle(
      color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold);
  Icon myIcon = const Icon(CupertinoIcons.forward,color: Colors.grey,size: 20);
  final List<Widget> _children = const [
    All(),
    Watching(),
    Finished(),
    Favourite(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer:  Drawer(
          backgroundColor:Colors.black54,
          child: ListView(
            children: [
              SizedBox(
                child: DrawerHeader(
                  padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(0),
                    child: Stack(
                  children: [
                    SizedBox(height: double.infinity,width: double.infinity,child: Image.asset('assetses/img/img_32.png',fit: BoxFit.cover,)),
                  ],
                )),
              ),
              Container(height: 70,padding:const EdgeInsets.all(1),color: Colors.black,child: Card(elevation: 0,child: Center(child: ListTile(title: Text('Dub Anime',style: optionStyle,),trailing: myIcon,onTap: (){Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const DubAnime()));},)),),),
              Container(height: 70,padding:const EdgeInsets.all(1),color: Colors.black,child: Card(elevation: 0,child: Center(child: ListTile(title: Text('Sub Anime',style: optionStyle,),trailing: myIcon,onTap: (){Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const SubAnime()));},)),),),
              Container(height: 70,padding:const EdgeInsets.all(1),color: Colors.black,child: Card(elevation: 0,child: Center(child: ListTile(title: Text('TV Movies',style: optionStyle,),trailing: myIcon,onTap: (){Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const TvMovies()));},)),),),
              Container(height: 70,padding:const EdgeInsets.all(1),color: Colors.black,child: Card(elevation: 0,child: Center(child: ListTile(title: Text('Miraculous "Tales of Ladybug and Chat Noire"',style: optionStyle,),trailing: myIcon,onTap: (){Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const MiraculousPage()));},)),),),
              Container(height: 70,padding:const EdgeInsets.all(1),color: Colors.black,child: Card(elevation: 0,child: Center(child: ListTile(title: Text('Upcoming, Ongoing',style: optionStyle,),trailing: myIcon,onTap: (){Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const UpComingOnGoing()));},)),),),
              Container(height: 70,padding:const EdgeInsets.all(1),color: Colors.black,child: Card(elevation: 0,child: Center(child: ListTile(title: Text('Mangas',style: optionStyle,),trailing: myIcon,onTap: (){Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const MangaScreen()));},)),),),
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            IconButton(icon: const Icon(Icons.search),onPressed: (){
              Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const MySearchBar()));
            },),
            IconButton(icon:const Icon(Icons.bookmark_border_outlined),onPressed:(){})
          ],
          iconTheme: const IconThemeData(color: Colors.grey),
          centerTitle: true,
          backgroundColor: const Color(0xFF282727),
          title: const Text('Anime App',style: TextStyle(color: Colors.grey),),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: _children[_currentIndex],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          fixedColor: Colors.blue,
          selectedIconTheme: const IconThemeData(color: Colors.blue),
          unselectedIconTheme: const IconThemeData(color: Colors.white),
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,), label: 'Home',backgroundColor:  Color(0xFF282727)),
            BottomNavigationBarItem(icon: Icon(Icons.slow_motion_video), label: 'Watching',backgroundColor: Color(0xFF282727)),
            BottomNavigationBarItem(icon: Icon(Icons.stop_circle_outlined,), label: 'Finished',backgroundColor:  Color(0xFF282727)),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'Favourite',backgroundColor:  Color(0xFF282727)),
          ],
        ),
      ),
    );
  }
}
