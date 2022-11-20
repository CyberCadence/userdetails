import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:userdetails/Bloc/bloc/api_bloc.dart';
import 'package:userdetails/Services/repository.dart';
import 'package:userdetails/View/Pages/listUsers.dart';
import 'package:userdetails/View/widgets/bottomNav.dart';

void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
    MyApp({super.key});



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
        child:   Scaffold(body: ValueListenableBuilder(
          valueListenable: valueNotifierindex, builder: (context, int value, child) 
          {
          return pages[value];  
          },),
        bottomNavigationBar: BottomNAvigation(),),
      ),
    );
  }

final pages=[  HomePage(), UserPageList(),CreataPage(),ActivityPage(),Profilepage()];

}
