import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('LOGO'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_important),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}
