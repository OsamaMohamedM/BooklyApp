import 'package:bookly_app/Features/Home/Data/Models/BookModel/BookModel.dart';
import 'package:bookly_app/core/utils/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/Colors.dart';
import 'widgets/BookDetailsView/BookDetailsViewBody.dart';

class BookDetailsView extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsView({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.scaffoldBackGround,
          leading: IconButton(
              onPressed: () {
               GoRouter.of(context).go(AppRoutes.homeScreen);
              },
              icon: const Icon(Icons.close)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body:  SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: BookDetailsViewBody(bookModel: bookModel,),
        )));
  }
}
