import 'package:bookly_app/Features/Home/Data/Models/BookModel/BookModel.dart';
import 'package:bookly_app/Features/Home/Presentation/views/widgets/BookRating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'CustomBookImage.dart';

class BookListViewItem extends StatelessWidget {
  final BookModel book;
  const BookListViewItem({required this.book, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Row(
        children: [
          SizedBox(
              height: 120,
              child: CustomBookImage(
                  width: 2.5,
                  imageData: book.volumeInfo!.imageLinks!.thumbnail!)),
          const SizedBox(
            width: 29,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    book.volumeInfo!.title!,
                    style: Styles.textStyle20,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  book.volumeInfo!.authors![0],
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      book.saleInfo!.price,
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                     BookRating(pageCount: book.volumeInfo!.pageCount!,lan: book.volumeInfo!.language??'non',),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
