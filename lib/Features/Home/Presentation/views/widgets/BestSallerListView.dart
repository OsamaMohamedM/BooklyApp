import 'package:bookly_app/Features/Home/Presentation/views/widgets/BestSallerItemView.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/AppRoutes.dart';

class BestSallerListView extends StatelessWidget {
  const BestSallerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 8,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.bookDetails);
              },
              child: const BestSellerListViewItem());
        });
  }
}
