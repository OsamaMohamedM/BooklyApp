import 'package:bookly_app/Features/Home/Presentation/views/widgets/HomeView/BestSallerItem/NewestBooksListView.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../BookListView.dart';
import 'CustomAppBar.dart';

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
                'Newest Books',
                style: Styles.textStyle18,
              ),
            ],
          ),
        ),
        BookWithDetailsListView(),
      ],
    );
  }
}
