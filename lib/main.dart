import 'package:aviz/DI/di.dart';
import 'package:aviz/Features/Home/bloc/home_bloc.dart';
import 'package:aviz/Features/Home/bloc/home_event.dart';
import 'package:aviz/Features/Home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await getInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) {
          var bloc = HomeBloc(locator.get());
          bloc.add(HomeRequestList());
          return bloc;
        },
        child: const HomeScreen(),
      ),
    );
  }
}
