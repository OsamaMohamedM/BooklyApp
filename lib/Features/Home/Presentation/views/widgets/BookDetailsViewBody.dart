import 'package:bookly_app/Features/Home/Presentation/views/widgets/BookDescription.dart';
import 'package:bookly_app/Features/Home/Presentation/views/widgets/BookImage.dart';
import 'package:bookly_app/Features/Home/Presentation/views/widgets/BookListView.dart';
import 'package:bookly_app/Features/Home/Presentation/views/widgets/BookRating.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'BuildCustomButton.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        BookImage(width: width),
        const BookDescription(),
        const SizedBox(height: 12,),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
        const SizedBox(height: 12,),
        const BuildCustomButton(),
        const SizedBox(height: 12,),
        Align(alignment:Alignment.topLeft ,child: Text('You can also like' , style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w700),)),
        const SizedBox(height: 12,),
        const BookListView(factor: 0.18),
        const SizedBox(height: 40,),
        
      ],
    );
  }
}





