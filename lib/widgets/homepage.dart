import 'package:clubfb/controllers/animated_image.dart';
import 'package:clubfb/controllers/club_controller.dart';
import 'package:clubfb/controllers/player_controller.dart';
import 'package:clubfb/models/player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ClubController _clubController = Get.put(ClubController());
    PlayerController _playerController = Get.put(PlayerController());
    final pages = [
      Stack(
        children: [
          VxAnimatedBox()
              .size(context.screenWidth, context.screenHeight)
              .withGradient(LinearGradient(
                  colors: [Color(0xfffc21111), Colors.white],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight))
              .make(),
          Container(
            //color: Colors.red,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    child: AnimatedImageState(
                      club: _clubController.clubs[0],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _clubController.clubs[0].name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        _clubController.clubs[0].des,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 50,
                              height: 50,
                              child: Image.asset('assets/icons/stadium.png')),
                          SizedBox(
                            width: 20,
                          ),
                          Text(_clubController.clubs[0].stadium),
                          SizedBox(
                            width: 20,
                          ),
                          Text('|'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(_clubController.clubs[0].capacity)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            children: List.generate(player.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Column(
                              children: [
                                Container(
                                  height: 68,
                                  width: 68,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                          colors: [Colors.white, Colors.red],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            //border: Border.all(color: Colors.black),
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    player[index]['avt'])))),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                SizedBox(
                                  width: 68,
                                  child: Center(
                                    child: Text(
                                      player[index]['name'],
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        })),
                      ),
                      Container(
                        height: 68,
                        width: 68,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.red],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                  //border: Border.all(color: Colors.black),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          _playerController.players[0].avt)))),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 68,
                        child: Center(
                          child: Text(
                            _playerController.players[0].name,
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      Container(
        color: Colors.blue,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              AnimatedImageState(club: _clubController.clubs[1])
            ],
          ),
        ),
      ),
      Container(
        color: Colors.red,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              AnimatedImageState(club: _clubController.clubs[2])
            ],
          ),
        ),
      ),
      Container(
        color: Colors.blue,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              AnimatedImageState(club: _clubController.clubs[3])
            ],
          ),
        ),
      ),
      Container(
        color: Colors.red,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              AnimatedImageState(club: _clubController.clubs[4])
            ],
          ),
        ),
      ),
      Container(
        color: Colors.white,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              AnimatedImageState(club: _clubController.clubs[5])
            ],
          ),
        ),
      ),
    ];
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 600,
        //enableSideReveal: true,
      ),
    );
  }
}
