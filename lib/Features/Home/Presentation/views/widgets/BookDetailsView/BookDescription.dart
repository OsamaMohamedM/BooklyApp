import 'package:bookly_app/Features/Home/Data/Models/BookModel/BookModel.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class BookDescription extends StatelessWidget {
  final BookModel bookModel;
  const BookDescription({required this.bookModel,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
        
         bookModel.volumeInfo!.title!,
         textAlign: TextAlign.center,
         style: Styles.textStyle18 ,
         ),
        const SizedBox(
          height: 3,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
         bookModel.volumeInfo!.authors![0],
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
