import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_clone/presentation/home/screen_home.dart';
import 'package:youtube_clone/presentation/main_page/widgets/bottom_navigation_widget.dart';

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ScreenHome(),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}


