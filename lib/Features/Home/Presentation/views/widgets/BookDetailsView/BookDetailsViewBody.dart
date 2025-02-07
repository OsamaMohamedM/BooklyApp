import 'package:flutter/material.dart';

import 'BookDetailsSection.dart';
import 'BooksSimmilar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsSection(),
              Expanded(
                  child: SizedBox(
                height: 12,
              )),
              BooksSimmillar(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        )
      ],
    );
  }
}
