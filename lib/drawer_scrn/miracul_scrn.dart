import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../search_barrrrrrrrrrrrrrrrrrrrrrr.dart';

class MiraculousPage extends StatefulWidget {
  const MiraculousPage({super.key});

  @override
  State<MiraculousPage> createState() => _MiraculousPageState();
}

class _MiraculousPageState extends State<MiraculousPage> {

  TextStyle optionStyle = const TextStyle(
      color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold);
  Icon myIcon = const Icon(CupertinoIcons.forward,color: Colors.grey,size: 20);
  Icon myBtmIcon = const Icon(CupertinoIcons.chart_pie);
  final List<Widget> _children = const [
    // SeasonOne(),
    // SeasonTwo(),
    // SeasonThree(),
    // SeasonFour(),
    // SeasonFive(),
    // SeasonSix(),
  ];
  int _currentIndex = 0;

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: const Text('Miraculous Page',style: TextStyle(color: Colors.grey),),
      ),
      // body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        fixedColor: Colors.blue,
        selectedIconTheme: const IconThemeData(color: Colors.blue),
        unselectedIconTheme: const IconThemeData(color: Colors.white),
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(icon: myBtmIcon,label: 'Season 1'),
          BottomNavigationBarItem(icon: myBtmIcon,label: 'Season 2'),
          BottomNavigationBarItem(icon: myBtmIcon,label: 'Season 3'),
          BottomNavigationBarItem(icon: myBtmIcon,label: 'Season 4'),
          BottomNavigationBarItem(icon: myBtmIcon,label: 'Season 5')
        ],
      ),
    );
  }
}
