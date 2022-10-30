import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_clone/core/constants.dart';

class ScreenShorts extends StatelessWidget {
  const ScreenShorts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
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
              child: Container(
                color: Colors.amber,
                child: Row(
                  children: [
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
                children:  const [
                  VideoActionWidget(),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  const VideoActionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        children: const [
          Icon(Icons.thumb_up,color: kwhite,size: kIconSize,),
          Text('1M')
        ],
      ),
    );
  }
}
