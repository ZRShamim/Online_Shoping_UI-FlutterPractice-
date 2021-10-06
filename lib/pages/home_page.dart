import 'package:flutter/material.dart';

import '../data/constant.dart';
import '../theme/colors.dart';

import '../widgets/custom_slider.dart';
import '../widgets/home_top_banner.dart';
import '../widgets/sec_title.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    var mediaQuerry = MediaQuery.of(context);
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        HomeTopBanner(),
        const SizedBox(
          height: 40,
        ),
        const SecTitle('Categories'),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(categories.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 7.5, right: 7.5),
              child: SizedBox(
                width: 180,
                height: mediaQuerry.size.height * .3,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              categories[index]['imgUrl'] as String),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          categories[index]['title'] as String,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          })),
        ),
        const SizedBox(
          height: 40,
        ),
        const SecTitle('Recomended for you'),
        const SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(recommends.length, (index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7.5, right: 7.5),
                  child: SizedBox(
                    width: 140,
                    height: mediaQuerry.size.height * .25,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  recommends[index]['imgUrl'] as String),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recommends[index]['title'] as String,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: black,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$${recommends[index]['price']}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: grey,
                          height: 1.5,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          })),
        ),
        const SizedBox(
          height: 40,
        ),
        CustomeCarouselHomePage(
          items: slider,
        ),
        const SizedBox(
          height: 30,
        ),
        const SecTitle('Recently Viewed'),
        const SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(recently.length, (index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7.5, right: 7.5),
                  child: SizedBox(
                    width: 140,
                    height: mediaQuerry.size.height * .25,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  recently[index]['imgUrl'] as String),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recently[index]['title'] as String,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: black,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$${recently[index]['price']}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: grey,
                          height: 1.5,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          })),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
