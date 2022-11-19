import 'package:flutter/material.dart';

ValueNotifier<int> valueNotifierindex = ValueNotifier(0);

class BottomNAvigation extends StatelessWidget {
  const BottomNAvigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: valueNotifierindex,
        builder: (context, int newindex, _) {
          return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              currentIndex: newindex,
              onTap: (value) {
                valueNotifierindex.value = value;
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.collections), label: 'People'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: 'Create'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.download), label: 'Activity'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.download), label: 'Profile')
              ]);
        });
  }
}
