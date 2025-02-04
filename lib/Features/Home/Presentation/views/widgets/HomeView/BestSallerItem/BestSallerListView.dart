import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../core/utils/AppRoutes.dart';
import '../../BestSallerItemView.dart';

class BookDataListView extends StatelessWidget {
  const BookDataListView({
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
              child: const BookListViewItem());
        },
        childCount: 15,
      ),
    );
  }
}
