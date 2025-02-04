import 'package:bookly_app/core/utils/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
      child: Row(
        children: [
          Image.asset(
            AssetsData.Logo,
            height: 16,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.searchView);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
              )),
        ],
      ),
    );
  }
}
