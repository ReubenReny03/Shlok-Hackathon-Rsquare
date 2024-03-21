class LeaderboardDetail {
  String image;
  String name;
  String rank;
  int point;

  LeaderboardDetail({
    required this.image,
    required this.name,
    required this.rank,
    required this.point,
  });
}

List<LeaderboardDetail> userItems = [
  LeaderboardDetail(
    image: "lib/images/a.png",
    name: 'Dora Hines',
    rank: "4 ",
    point: 6432,
  ),
  LeaderboardDetail(
    image: "lib/images/b.png",
    name: 'Alise Smith',
    rank: "5 ",
    point: 5232,
  ),
  LeaderboardDetail(
    image: "lib/images/c.png",
    name: 'Boss Dee',
    rank: "6 ",
    point: 5200,
  ),
  LeaderboardDetail(
    image: "lib/images/d.png",
    name: 'Gender Tie',
    rank: "7 ",
    point: 4900,
  ),
  LeaderboardDetail(
    image: "lib/images/f.jpeg",
    name: 'Roma Roy',
    rank: "8 ",
    point: 4100,
  ),
  LeaderboardDetail(
    image: "lib/images/h.jpeg",
    name: 'Alta Koch',
    rank: "43",
    point: 2200,
  ),
];
