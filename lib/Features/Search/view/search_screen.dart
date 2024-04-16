import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          textAlign: TextAlign.center,
          'Coming   Soon ⏳',
          style: TextStyle(
            fontSize: 64.0,
            fontFamily: 'sb',
          ),
        ),
      ),
    );
  }
}
