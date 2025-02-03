import 'package:bookly_app/Features/Home/Presentation/views/widgets/HomeView/BestSallerItem/BestSallerItemView.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../core/utils/AppRoutes.dart';

class BestSallerListView extends StatelessWidget {
  const BestSallerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.bookDetails);
              },
              child: const BestSellerListViewItem());
        },
        childCount: 15,
      ),
    );
  }
}
