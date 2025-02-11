import 'package:bookly_app/Features/Home/Data/Models/BookModel/BookModel.dart';
import 'package:flutter/material.dart';

import '../BookImage.dart';
import '../BookRating.dart';
import 'BookDescription.dart';
import 'BuildCustomButton.dart';

class BookDetailsSection extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsSection({required this.bookModel, super.key,});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        BookImage(imagePath: bookModel.volumeInfo!.imageLinks!.thumbnail! , width: width),
        BookDescription(bookModel : this.bookModel,),
        const SizedBox(
          height: 12,
        ),
         BookRating(
          pageCount  : this.bookModel.volumeInfo!.pageCount!,
          lan  : this.bookModel.volumeInfo!.language ?? 'non',
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 12,
        ),
         BuildCustomButton(price :this.bookModel.saleInfo!.price),
      ],
    );
  }
}
