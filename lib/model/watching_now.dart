class WatchingNow {
  String name;
  String episodes;
  String image;
  bool unLiked;

  WatchingNow({required this.unLiked,required this.name,required this.episodes,required this.image});
}

final watchingNowList = [
  WatchingNow(unLiked:true,name: 'My Little Monster', episodes: '13', image: 'assets/img/img_81.png'),
  WatchingNow(unLiked: true, name: "Jujutsu Kaisen S1", episodes: "24", image: "assets/picture/img_7.png"),
];