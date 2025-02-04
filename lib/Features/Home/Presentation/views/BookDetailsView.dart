import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/Colors.dart';
import 'widgets/BookDetailsView/BookDetailsViewBody.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.scaffoldBackGround,
          leading: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.close)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body: const SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: BookDetailsViewBody(),
        )));
  }
}
