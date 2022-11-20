
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:userdetails/Bloc/bloc/api_bloc.dart';
import 'package:userdetails/Model/Userlistmodel.dart';
import 'package:userdetails/Services/repository.dart';
import 'package:userdetails/View/Pages/userDetails.dart';
import 'package:userdetails/View/widgets/bottomNav.dart';

class UserPageList extends StatelessWidget {
  const UserPageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'LOGO',
            style: TextStyle(
                color: Color.fromARGB(255, 108, 108, 218),
                fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Iconsax.notification, color: Colors.black)),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  shadows: [],
                  Icons.search_outlined,
                  color: Colors.black,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<ApiBloc, ApiState>(
            builder: (context, state) {
              if (state is ApiInitialState) {
                context.read<ApiBloc>().add(LoadAPiEvent());
              }
              if (state is ApiLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is ApiLoadedState) {
                return UserListWidget(state.user, context);
              }

              if (state is ApiErrorState) {
                return Center(
                  child: Text(state.message.toString()),
                );
              }
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.yellow,
              ));
            },
          ),
        ));
  }
}

Widget UserListWidget(List<User> data, BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Scaffold(
    backgroundColor: Colors.white,
    body: ListView.separated(
        itemBuilder: (context, index) {
          User userdata = data[index];
          return ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.5, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(20)),
            leading: Container(
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/wall.jpg'),
                      fit: BoxFit.cover)),
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                userdata.name.toString(),
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            subtitle: Text(
              userdata.email.toString(),
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
            trailing: TextButton(
                style: TextButton.styleFrom(
                  side: BorderSide(width: 0.5, color: Colors.grey.shade300),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            UserDetailsPage(userdetails: userdata),
                      ));
                },
                child: const Text(
                  'View',
                  style: TextStyle(
                      fontSize: 11,
                      color: Color.fromARGB(
                        255,
                        108,
                        108,
                        218,
                      )),
                )),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
              height: 15,
            ),
        itemCount: data.length),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('HomePage  switch to people tab'),
    ));
  }
}

class CreataPage extends StatelessWidget {
  const CreataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('Page  switch to people tab'),
    ));
  }
}

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('Activitypage  switch to people tab'),
    ));
  }
}

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('Profilepage  switch to people tab'),
    ));
  }
}

