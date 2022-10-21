import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_clone/core/constants.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.play_arrow_outlined,
          color: Colors.red,
          size: kIconSize,
        ),
        Text(
          'YouTube',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Icon(
          Icons.cast,
          color: Colors.white,
          size: kIconSize,
        ),
        kWidth,
        Icon(
          Icons.notifications,
          color: Colors.white,
          size: kIconSize,
        ),
        kWidth,
        Icon(
          Icons.search,
          color: Colors.white,
          size: kIconSize,
        ),
        kWidth,
        Icon(
          Icons.person_rounded,
          color: Colors.white,
          size: kIconSize,
        ),
        kWidth
      ],
    );
  }
}
