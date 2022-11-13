import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_clone/core/constants.dart';

class ScreenShorts extends StatelessWidget {
  const ScreenShorts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(10, (index) => const ShortsWidget()),
        ),
      ),
    );
  }
}

class ShortsWidget extends StatelessWidget {
  const ShortsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color.fromARGB(255, 52, 49, 49),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(
                Icons.search,
                color: kwhite,
                size: kIconSize,
              ),
              kWidth,
              Icon(
                Icons.camera_alt_outlined,
                color: kwhite,
                size: kIconSize,
              ),
              kWidth,
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              children: [
                kWidth,
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: const Icon(
                    Icons.person_rounded,
                    size: 30,
                  ),
                ),
                kWidth,
                const Text('Username'),
                kWidth,
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsetsDirectional.all(8)),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 255, 0, 0)),
                  ),
                  child: const Text(
                    'SUBSCRIBE',
                    style: TextStyle(color: kwhite),
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:   [
              const VideoActionWidget(icon: Icons.thumb_up,iconTitle: '1M',),
              const VideoActionWidget(icon: Icons.thumb_down,iconTitle: 'Dislike',),
              const VideoActionWidget(icon: Icons.message,iconTitle: 'share',),
              const VideoActionWidget(icon: Icons.send,iconTitle: 'share',),
              const VideoActionWidget(icon: Icons.more_horiz,iconTitle: '',),
              kHeight,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Container(height: 40,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: kwhite),),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String iconTitle;
  const VideoActionWidget({
    Key? key,
    required this.icon,
    required this.iconTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children:  [
          Icon(
            icon,
            color: kwhite,
            size: kIconSize,
          ),
          Text(iconTitle),
        ],
      ),
    );
  }
}
