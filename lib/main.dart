import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:userdetails/Bloc/bloc/api_bloc.dart';
import 'package:userdetails/Services/repository.dart';
import 'package:userdetails/View/Pages/listUsers.dart';
import 'package:userdetails/View/widgets/bottomNav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
      backgroundColor:  Colors.white,
        elevation: 0,
      )),
      home: BlocProvider<ApiBloc>(
        create: (context) => ApiBloc(repository: Repository()),
        child: const Scaffold(body: UserPageList(),
        bottomNavigationBar: BottomNAvigation(),),
      ),
    );
  }
}
