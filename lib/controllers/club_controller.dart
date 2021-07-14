import 'package:clubfb/models/club.dart';
import 'package:get/get.dart';

class ClubController extends GetxController with SingleGetTickerProviderMixin {
  List<Club> _clubs = data
      .map((club) => Club(
          id: club['id'],
          avatar: club['avatar'],
          des: club['des'],
          name: club['name'],
          stadium: club['stadium'],
          capacity: club['capacity'],
          league: club['league']))
      .toList();

  List<Club> get clubs => this._clubs;
}
