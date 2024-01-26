import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/all_anime.dart';

class All extends StatefulWidget {
  const All({super.key});

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  TextStyle optionalStyle = const TextStyle(color: Colors.white, fontSize: 20);
  final _anime = AllAnime;
  final List _animeList = [];
  String _noAnime = "No Anime";

  void _handleSearch(String input) {
    _animeList.clear();
    for (var str in allAnimeListRow) {
      if (str.name.toLowerCase().contains(input.toLowerCase())) {
        setState(() {
          _animeList.add(str);
        });
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 2
              ),
              borderRadius: BorderRadius.circular(25)
            ),
            child: SearchBar(
              hintText: "Search... Total Animes : ${allAnimeListRow.length}",
              onChanged: _handleSearch,
              elevation: MaterialStateProperty.all(0),
            ),
          ),
        ),
        body: _animeList.isEmpty ? GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 1.5,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 2),
          itemCount: allAnimeListRow.length,
          itemBuilder: (BuildContext context, index) {
            AllAnime data = allAnimeListRow[index];
            return SizedBox(
              height: 300,
              width: 200,
              child: Card(
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Stack(
                      clipBehavior: Clip.hardEdge,
                      children: [
                        Image.asset(
                          data.image,
                          fit: BoxFit.cover,
                          height: double.infinity,
                        ),
                        Positioned(
                            top: 5,
                            right: 5,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  data.unLiked = !data.unLiked;
                                });
                              },
                              icon: data.unLiked
                                  ? const Icon(
                                Icons.favorite_outline,
                                color: Colors.red,
                                size: 30,
                              )
                                  : const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              ),
                            )),
                        Positioned(
                            bottom: 0,
                            child: SizedBox(
                              height: 100,
                              width: 200,
                              child: Container(
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                          colors: [
                                            Colors.black87,
                                            Colors.black54,
                                            Colors.black54,
                                            Colors.black38,
                                            Colors.black12
                                          ])),
                                  child: SingleChildScrollView(
                                    child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Text(data.name),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text('Episodes:${data.episodes}')
                                          ],
                                        )),
                                  )),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ) : GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 1.5,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 2),
          itemCount: _animeList.length,
          itemBuilder: (BuildContext context, index) {
            var data = _animeList[index];
            return SizedBox(
              height: 300,
              width: 200,
              child: Card(
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Stack(
                      clipBehavior: Clip.hardEdge,
                      children: [
                        Image.asset(
                          data.image,
                          fit: BoxFit.cover,
                          height: double.infinity,
                        ),
                        Positioned(
                            top: 5,
                            right: 5,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  data.unLiked = !data.unLiked;
                                });
                              },
                              icon: data.unLiked
                                  ? const Icon(
                                Icons.favorite_outline,
                                color: Colors.red,
                                size: 30,
                              )
                                  : const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              ),
                            )),
                        Positioned(
                            bottom: 0,
                            child: SizedBox(
                              height: 100,
                              width: 200,
                              child: Container(
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                          colors: [
                                            Colors.black87,
                                            Colors.black54,
                                            Colors.black54,
                                            Colors.black38,
                                            Colors.black12
                                          ])),
                                  child: SingleChildScrollView(
                                    child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Text(data.name),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text('Episodes:${data.episodes}')
                                          ],
                                        )),
                                  )),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
    );
  }
}
