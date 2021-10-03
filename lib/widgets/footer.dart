import 'package:flutter/material.dart';
import 'package:shooping_app/data/constant.dart';
import 'package:shooping_app/widgets/getappbar.dart';
import '../theme/colors.dart';

class GetFooter extends StatefulWidget {
  int activeTab = 0;

  @override
  State<GetFooter> createState() => _GetFooterState();
}

class _GetFooterState extends State<GetFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
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
                color: widget.activeTab == index ? accent : black,
              ),
              onPressed: () {
                setState(() {
                  widget.activeTab = index;
                });
              },
            );
          }),
        ),
      ),
    );
  }
}
