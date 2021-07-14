import 'package:clubfb/models/player.dart';
import 'package:get/get.dart';

import 'package:get/get.dart';

class PlayerController extends GetxController
    with SingleGetTickerProviderMixin {
  List<Player> _players = player
      .map((player) => Player(
            avt: player['avt'],
            name: player['name'],
            wpp: player['wpp'],
          ))
      .toList();
  List<Player> get players => this._players;
}
