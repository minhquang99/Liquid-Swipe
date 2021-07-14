class Club {
  late final int id;
  final String avatar;
  final String name;
  final String des;
  final String stadium;
  final String capacity;
  final String league;

  Club(
      {required this.id,
      required this.avatar,
      required this.des,
      required this.name,
      required this.stadium,
      required this.capacity,
      required this.league});
}

const List data = [
  {
    "id": 1,
    "avatar": "assets/images/ars.png",
    "name": "Arsenal",
    "des": "Pháo thủ",
    "stadium": "Emirates",
    "capacity": "60.260",
    "league": "assets/images/premier.png"
  },
  {
    "id": 2,
    "avatar": "assets/images/chel.png",
    "name": "Chelsea",
    "des": "The Blues",
    "stadium": "Emirates",
    "capacity": "60.260",
    "league": "assets/images/premier.png"
  },
  {
    "id": 3,
    "avatar": "assets/images/mu.png",
    "name": "Manchester United",
    "des": "Man đần",
    "stadium": "Emirates",
    "capacity": "60.260",
    "league": "assets/images/premier.png"
  },
  {
    "id": 4,
    "avatar": "assets/images/mc.png",
    "name": "Manchester City",
    "des": "Man cute",
    "stadium": "Emirates",
    "capacity": "60.260",
    "league": "assets/images/premier.png"
  },
  {
    "id": 5,
    "avatar": "assets/images/liv.png",
    "name": "Liverpool",
    "des": "Lữ đoàn đỏ",
    "stadium": "Emirates",
    "capacity": "60.260",
    "league": "assets/images/premier.png"
  },
  {
    "id": 6,
    "avatar": "assets/images/tot.png",
    "name": "Tottenham Hotspur",
    "des": "The Spurs",
    "stadium": "Emirates",
    "capacity": "60.260",
    "league": "assets/images/premier.png"
  },
];
