import 'package:bookly_app/core/utils/Colors.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../views/widgets/BookListView.dart';
import '../views/widgets/CustomAppBar.dart';
import '../views/widgets/CustomListViewItem.dart';

class HomewViewBody extends StatelessWidget {
  const HomewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        BookListView(),
        SizedBox(
          height: 50,
        ),
        Text(
          'Best Seller',
          style: Styles.textStyle18,
        ),
        SizedBox(height: 20,),

      ],
    );
  }
}
