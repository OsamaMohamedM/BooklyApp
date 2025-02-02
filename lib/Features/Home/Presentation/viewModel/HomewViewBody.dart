import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../views/widgets/BestSallerListView.dart';
import '../views/widgets/BookListView.dart';
import '../views/widgets/CustomAppBar.dart';

class HomewViewBody extends StatelessWidget {
  const HomewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              BookListView(),
              SizedBox(
                height: 30,
              ),
              Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSallerListView(),
        )
      ],
    );
  }
}
