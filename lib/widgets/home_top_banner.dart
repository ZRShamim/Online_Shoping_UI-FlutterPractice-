import 'package:flutter/material.dart';

import '../data/constant.dart';
import '../theme/colors.dart';

class HomeTopBanner extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var mediaQuerry = MediaQuery.of(context);
    return Stack(
      children: [
        Container(
          width: mediaQuerry.size.width,
          height: mediaQuerry.size.height * .5,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(homeImg), fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 35, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(
                Icons.favorite,
                color: white,
                size: 28,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.search,
                color: white,
                size: 30,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Winter Collection',
                  style: TextStyle(
                      fontSize: 25, color: white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      'DISCOVER',
                      style: TextStyle(
                          fontSize: 15,
                          color: white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: white,
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
