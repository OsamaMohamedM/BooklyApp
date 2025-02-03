import 'dart:ffi';

import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/AppRoutes.dart';
import 'CustomBookImage.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key , required this.factor});
  final num factor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.bookDetails);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * factor,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: CustomBookImage(imageData: AssetsData.test),
              );
            }),
      ),
    );
  }
}
