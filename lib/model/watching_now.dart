class WatchingNow {
  String name;
  String episodes;
  String image;
  bool unLiked;

  WatchingNow({required this.unLiked,required this.name,required this.episodes,required this.image});
}

final watchingNowList = [
  WatchingNow(unLiked: true, name: "The Wrong Way To Use Magic", episodes: "12", image: "assets/picture/img_22.png"),
  WatchingNow(unLiked: true, name: "Hokkaido Gals Are Super Adorable", episodes: "12", image: "assets/picture/img_17.png"),
  WatchingNow(unLiked: true, name: "The Foolish Angel Dances With The Devil", episodes: "12", image: "assets/picture/img_16.png"),
  WatchingNow(unLiked:true,name: 'My Little Monster', episodes: '13', image: 'assets/img/img_81.png'),];