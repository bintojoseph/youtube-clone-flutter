import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.play_arrow_outlined,
          color: Colors.white,
        ),
        Text('YouTube'),
        Spacer(),
        Icon(
          Icons.cast,
          color: Colors.white,
        ),
        Icon(
          Icons.notifications,
          color: Colors.white,
        ),
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        Icon(
          Icons.person_rounded,
          color: Colors.white,
        ),
      ],
    );
  }
}
