import 'package:flutter/material.dart';
import 'package:shooping_app/data/constant.dart';

import './home_page.dart';
import '../theme/colors.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  // appbar
  AppBar appbar = AppBar(
    toolbarHeight: 0,
    elevation: 0,
    backgroundColor: white,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: getFooter(),
      appBar: getAppBar() as PreferredSizeWidget,
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        const Center(
          child: Text(
            'Store',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const Center(
          child: Text(
            'Account',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const Center(
          child: Text(
            'Cart',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const Center(
          child: Text(
            'More...',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget getAppBar() {
    switch (activeTab) {
      case 0:
        return appbar;
      case 1:
        return appbar;
      case 2:
        return AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: white,
          title: const Text(
            "ACCOUNT",
            style: TextStyle(color: black),
          ),
        );
      case 3:
        return AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: white,
          title: const Text(
            "CART",
            style: TextStyle(color: black),
          ),
        );
      case 4:
        return AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: white,
          title: const Text(
            "MORE",
            style: TextStyle(color: black),
          ),
        );
      default:
        return appbar;
    }
  }

  Widget getFooter() {
    return Container(
      height: MediaQuery.of(context).size.height * .1,
      decoration: BoxDecoration(
          color: white,
          border: Border(top: BorderSide(color: grey.withOpacity(0.2)))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(itemsTab.length, (index) {
              return IconButton(
                  icon: Icon(
                    itemsTab[index]['icon'],
                    size: itemsTab[index]['size'],
                    color: activeTab == index ? accent : black,
                  ),
                  onPressed: () {
                    setState(() {
                      activeTab = index;
                    });
                  });
            })),
      ),
    );
  }
}
