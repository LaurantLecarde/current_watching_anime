class WatchingNow {
  String name;
  String episodes;
  String image;
  bool unLiked;

  WatchingNow({required this.unLiked,required this.name,required this.episodes,required this.image});
}

final watchingNowList = [
  WatchingNow(unLiked: true, name: "Rent a Girlfriend S2", episodes: "12", image:"assets/picture/img_2.png"),
];