import 'package:bookly_app/Features/Home/Presentation/views/widgets/BookDetailsViewBody.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/Colors.dart';
class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.scaffoldBackGround,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body: const SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal:0),
          child: BookDetailsViewBody(),
        )));
  }
}
