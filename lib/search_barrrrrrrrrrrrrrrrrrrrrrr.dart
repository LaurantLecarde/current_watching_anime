import 'package:current_watching_anime/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/all_anime.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  final List<String> _results = [];
  String noAnime = 'no Anime';
  final List<String> _noAnime = [];

  void _handleSearch(String input) {
    _results.clear();
    for (var str in allAnimeListRow) {
      if (str.name.toLowerCase().contains(input.toLowerCase())) {
        setState(() {
          _results.add(str.name.toString());
        });
      }
    }
  }

  final InputDecoration _myDecoration = InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(21),
          borderSide: const BorderSide(color: Colors.blue)),
      labelText: "Search An Anime ",
      labelStyle: const TextStyle(color: Color(0xff012cff)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(21),
          borderSide: const BorderSide(color: Colors.blue)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(21),
          borderSide: const BorderSide(color: Colors.blue)));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                      height: 50,
                      child: TextField(
                          onChanged: _handleSearch, decoration: _myDecoration)),
                ],
              ),
            ),
            body: _results.isEmpty
                ? Container(
                    color: const Color(0xFF020202),
                    padding: const EdgeInsets.all(10),
                    child: ListView.builder(
                        itemCount: allAnimeListRow.length,
                        itemBuilder: (context, index) {
                          AllAnime data = allAnimeListRow[index];
                          return Card(
                            elevation: 0,
                            child: ListTile(
                              onTap: () {
                                Navigator.of(context).push(CupertinoPageRoute(
                                    builder: (context) => const MainPage()));
                              },
                              title: Text(data.name,
                                  style: const TextStyle(
                                      color: Colors.blue, fontSize: 15)),
                            ),
                          );
                        }),
                  )
                : Container(
                    color: const Color(0xFF020202),
                    padding: const EdgeInsets.all(10),
                    child: ListView.builder(
                        itemCount: _results.length,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 0,
                            child: ListTile(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const MainPage()));
                              },
                              title: Text(_results[index],
                                  style: const TextStyle(
                                      color: Colors.blue, fontSize: 15)),
                            ),
                          );
                        }),
                  )),
      ),
    );
  }
}
