import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../search_barrrrrrrrrrrrrrrrrrrrrrr.dart';

class UpComingOnGoing extends StatefulWidget {
  const UpComingOnGoing({super.key});

  @override
  State<UpComingOnGoing> createState() => _UpComingOnGoingState();
}

class _UpComingOnGoingState extends State<UpComingOnGoing> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
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
        title: const Text('Upcoming And Ongoing Page',style: TextStyle(color: Colors.grey),),
        bottom: const TabBar(
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.blueGrey,
          tabs: [
            Tab(child: Center(child: Text('Upcoming'),),),
            Tab(child: Center(child: Text('Ongoing'),),),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Icon(CupertinoIcons.backward_end_alt),
          Icon(CupertinoIcons.forward_end_alt),
        ],
      ),
    ));
  }
}
