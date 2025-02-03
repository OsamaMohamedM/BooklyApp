import 'package:flutter/material.dart';

import '../BookImage.dart';
import '../BookRating.dart';
import 'BookDescription.dart';
import 'BuildCustomButton.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        BookImage(width: width),
        const BookDescription(),
        const SizedBox(
          height: 12,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 12,
        ),
        const BuildCustomButton(),
      ],
    );
  }
}