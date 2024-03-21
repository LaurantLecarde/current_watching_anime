import 'package:current_watching_anime/model/watching_now.dart';
import 'package:flutter/material.dart';

import '../model/all_anime.dart';

class Watching extends StatefulWidget {
  const Watching({super.key});

  @override
  State<Watching> createState() => _WatchingState();
}

class _WatchingState extends State<Watching> {
  TextStyle optionalStyle = const TextStyle(color: Colors.white, fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.blue, width: 2)),
          child: Center(
              child: Text(
            'Watching Animes : ${watchingNowList.length}',
            style: TextStyle(fontSize: 25, color: Colors.grey),
          )),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1 / 1.5,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 2),
        itemCount: watchingNowList.length,
        itemBuilder: (BuildContext context, index) {
          WatchingNow data = watchingNowList[index];

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
                            width: 250,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                          width: 150, child: Text(data.name)),
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
