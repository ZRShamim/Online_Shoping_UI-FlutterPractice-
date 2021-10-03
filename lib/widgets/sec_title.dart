import 'package:flutter/material.dart';

import '../theme/colors.dart';

class SecTitle extends StatelessWidget {
  final String title;

  const SecTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: const [
              Text(
                'All',
                style: TextStyle(
                    color: grey, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward,
                color: grey,
                size: 18,
              ),
            ],
          )
        ],
      ),
    );
  }
}
