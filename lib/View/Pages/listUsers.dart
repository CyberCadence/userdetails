import 'package:flutter/material.dart';
import 'package:userdetails/Model/Userlistmodel.dart';
import 'package:userdetails/Services/repository.dart';
import 'package:userdetails/View/widgets/bottomNav.dart';

class UserList extends StatelessWidget {
    UserList({super.key});

  @override
 





 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('LOGO'),
        actions: [
          IconButton(
            onPressed: () {
Repository().getdata();

            },
            icon: const Icon(Icons.notification_important),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
   body: Center(
     child: ListView.builder(
      
      itemCount: userdata?.length,
      itemBuilder: (context, index) {

      User user=userdata![index];
       return Center(child: ListTile(leading: Text(user.address!.street.toString()),));
     },),
   ),bottomNavigationBar:   BottomNAvigation(), );
  }
}
