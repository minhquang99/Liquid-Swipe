import 'package:clubfb/controllers/animated_image.dart';
import 'package:clubfb/controllers/club_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ClubController _clubController = Get.put(ClubController());
    final pages = [
      Container(
        color: Colors.red,
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
                  )
                ],
              ),
            )
          ],
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
