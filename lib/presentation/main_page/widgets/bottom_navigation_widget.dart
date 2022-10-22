import 'package:flutter/material.dart';


ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context,int newIndex,_) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: newIndex,
          onTap: (index){
            indexChangeNotifier.value = index;
          },
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.air),
              label: 'shorts',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                size: 40,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions),
              label: 'subscriptions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: 'Library',
            ),
          ],
        );
      }
    );
  }
}