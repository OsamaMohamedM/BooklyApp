import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../views/widgets/BookListView.dart';
import '../views/widgets/CustomAppBar.dart';

class HomewViewBody extends StatelessWidget {
  const HomewViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        BookListView(),
        SizedBox(height: 50,),
        Text('Best Seller', style: Styles.titleMedium,)
      ],
    );
  }
}

