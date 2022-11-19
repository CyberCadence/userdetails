import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
              backgroundColor: Colors.white,
              selectedItemColor: const Color.fromARGB(255, 89, 89, 209),
              unselectedItemColor: Colors.grey,
              currentIndex: newindex,
              onTap: (value) {
                valueNotifierindex.value = value;
              },
              items:   const [
                BottomNavigationBarItem(icon: Icon(Iconsax.home4,) , label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.people4), label: 'People'),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.add_square), label: 'Create'),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.heart), label: 'Activity'),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.profile_add), label: 'Profile')
              ]);
        });
  }
}
