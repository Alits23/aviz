import 'package:aviz/Features/Home/bloc/home_bloc.dart';
import 'package:aviz/Features/Home/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is HomeResponseState) {
              return state.hotPromotionList.fold(
                (l) {
                  return Text(l);
                },
                (r) {
                  return ListView.builder(
                    itemCount: r.length,
                    itemBuilder: (context, index) {
                      return Image.network(r[index].thumbnail);
                    },
                  );
                },
              );
            }
            return const Text('data');
          },
        ),
      ),
    );
  }
}
