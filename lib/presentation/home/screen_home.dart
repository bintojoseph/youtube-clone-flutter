import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_clone/core/constants.dart';
import 'package:youtube_clone/presentation/widgets/app_bar_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return const HomeListWidget();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 5,
          );
        },
        itemCount: 10,
      ),
    );
  }
}

class HomeListWidget extends StatelessWidget {
  const HomeListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 295,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 222,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://img.youtube.com/vi/abLD7p0xSYk/maxresdefault.jpg'),
              ),
            ),
          ),
          Container(
            height: 73,
            color: const Color.fromRGBO(46, 44, 44, 1),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 300,
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s',
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Text(
                      "Moto GP . 300K views . 2 months ago",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                  child: PopupMenuButton(
                    //splashRadius: 30,
                    //position: PopupMenuPosition.over,
                    //iconSize: 25,
                    color: Colors.black,
                    padding: const EdgeInsets.all(0.0),
                    enableFeedback: true,
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 0,
                        child: Text('Save to watch later',style: TextStyle(color: Colors.white,),),
                      ),
                      const PopupMenuItem(
                        value: 0,
                        child: Text('Save to playlist',style: TextStyle(color: Colors.white,),),
                      ),
                    ],
                    child: const Icon(Icons.more_vert),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
