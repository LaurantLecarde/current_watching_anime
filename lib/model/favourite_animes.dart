class MyFavourite {
  String name;
  String episodes;
  String image;
  bool unLiked;

  MyFavourite({required this.unLiked,required this.name,required this.episodes,required this.image});
}

final favouriteList =[
  MyFavourite(unLiked: false, name: "Darling in th franxx", episodes: "24", image: "assets/picture/img_9.png"),
  MyFavourite(unLiked: false, name: "Chainsaw Man", episodes: "12", image: "assets/picture/img_6.png"),
  MyFavourite( unLiked: false,name: 'My Star', episodes: '12', image: 'assets/img/img_1.png'),
  MyFavourite( unLiked: false,name: 'The Angel Next Door Spoils Me Rotten', episodes: '12', image: 'assets/img/img_2.png'),
  MyFavourite(unLiked:false,name: 'A Couple of Cuckoos', episodes: '24', image: 'assets/img/img_39.png'),
  MyFavourite(unLiked:false,name: 'Mushoku Tensei: Jobless Reincarnation S1', episodes: '24', image: 'assets/img/img_62.png'),
  MyFavourite(unLiked:false,name: 'Mushoku Tensei: Jobless Reincarnation S2', episodes: '13', image: 'assets/img/img_63.png'),
  MyFavourite(unLiked:false,name: 'More Than a Married But Not Lovers', episodes: '12', image: 'assets/img/img_79.png'),
  MyFavourite(unLiked:false,name: 'Rascal Does Not Dream of Bunny Girl Senpai', episodes: '12', image: 'assets/img/img_100.png'),
  MyFavourite(unLiked:false,name: 'Rascal Does Not Dream of Dreamy Girl Movie', episodes: 'Full', image: 'assetses/img/img.png'),
  MyFavourite(unLiked:false,name: 'Our Dating Story: The Experienced You And The Inexperienced Me', episodes: '12', image: 'assetses/img/img_15.png'),
  MyFavourite(unLiked:false,name: 'The Kingdom Of Ruins', episodes: 'Ongoing', image: 'assetses/img/img_18.png'),
];