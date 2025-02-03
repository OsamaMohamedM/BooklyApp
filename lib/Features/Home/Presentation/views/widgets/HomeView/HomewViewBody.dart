import 'package:bookly_app/Features/Home/Presentation/views/widgets/HomeView/BestSallerItem/BestSallerItemView.dart';
import 'package:bookly_app/Features/Home/Presentation/views/widgets/HomeView/BestSallerItem/BestSallerListView.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/AppRoutes.dart';

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
              BookListView(factor: 0.25,),
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
             BestSallerListView(),
      ],
    );
  }
}

