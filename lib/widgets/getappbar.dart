import 'package:flutter/material.dart';
import 'package:shooping_app/theme/colors.dart';
import 'package:shooping_app/widgets/footer.dart';

class GetAppBar extends StatefulWidget implements PreferredSizeWidget {
  int activeTab = 0;
  // GetAppBar({this.activeTab = 0});
  @override
  State<GetAppBar> createState() => _GetAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _GetAppBarState extends State<GetAppBar> {
  // int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    
    switch (widget.activeTab) {
      case 0:
        return AppBar(
          elevation: 0,
          backgroundColor: white,
          title: const Text('Home',
              style: TextStyle(
                color: black,
              )),
        );
        break;
      case 1:
        return AppBar(
          elevation: 0,
          backgroundColor: white,
          title: const Text('Location',
              style: TextStyle(
                color: black,
              )),
        );
        break;
      case 2:
        return AppBar(
          elevation: 0,
          backgroundColor: white,
          title: const Text('Account',
              style: TextStyle(
                color: black,
              )),
        );
        break;
      case 3:
        return AppBar(
          elevation: 0,
          backgroundColor: white,
          title: const Text('Shop',
              style: TextStyle(
                color: black,
              )),
        );
        break;
      case 4:
        return AppBar(
          elevation: 0,
          backgroundColor: white,
          title: const Text('Menu',
              style: TextStyle(
                color: black,
              )),
        );
        break;
      default:
        return AppBar(
          elevation: 0,
          backgroundColor: white,
          title: const Text('Home',
              style: TextStyle(
                color: black,
              )),
        );
    }
  }
}
