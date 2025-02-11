import 'package:bookly_app/Features/Home/Data/Models/BookModel/BookModel.dart';
import 'package:flutter/material.dart';

import 'BookDetailsSection.dart';
import 'BooksSimmilar.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsViewBody({ super.key, required this.bookModel});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsSection(bookModel:bookModel),
              const Expanded(
                  child: SizedBox(
                height: 12,
              )),
              const BooksSimmillar(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        )
      ],
    );
  }
}
