import 'package:bookly_app/Features/Home/Presentation/views/widgets/BookRating.dart';
import 'package:bookly_app/Features/Home/Presentation/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'BuildCustomButton.dart';
import 'CustomButton.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.22, vertical: 26),
          child: const CustomBookImage(
            imageData: AssetsData.test,
          ),
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 3,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 12,),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
        const SizedBox(height: 12,),
        const BuildCustomButton(),
      ],
    );
  }
}
