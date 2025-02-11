// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/AppRoutes.dart';
import '../../../../core/utils/assets.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    super.initState();
    NavigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AssetsData.Logo),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void NavigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).pushReplacement(AppRoutes.homeScreen);
    });
  }
}
