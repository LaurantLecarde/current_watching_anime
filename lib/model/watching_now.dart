class WatchingNow {
  String name;
  String episodes;
  String image;
  bool unLiked;

  WatchingNow({required this.unLiked,required this.name,required this.episodes,required this.image});
}

final watchingNowList = [
  WatchingNow(unLiked: true, name: '', episodes: '12', image: 'assetses/img/img_34.png'),
];