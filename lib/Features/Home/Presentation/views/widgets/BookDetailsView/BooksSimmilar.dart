import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../BookListView.dart';

class BooksSimmillar extends StatelessWidget {
  const BooksSimmillar({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 12,
        ),
        const BookListView(),
      ],
    );
  }
}
