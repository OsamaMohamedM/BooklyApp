import 'package:bookly_app/Features/Home/Presentation/viewModel/HomewViewBody.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:   HomewViewBody()
    );
  }
}
