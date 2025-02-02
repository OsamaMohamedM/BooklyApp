import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
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

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomListViewItem(Width: 2.5),
        const SizedBox(width:30 ,),
         Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width*0.5,
              child:const Text(
                'Harry Potter and the Goblet of Fire',
                style: Styles.textStyle20,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),

          ],
        )
      ],
    );
  }
}
