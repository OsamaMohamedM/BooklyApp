import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/Colors.dart';
import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  final  int pageCount;
  final String lan;
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.pageCount, required this.lan});

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        Text(
         lan,
          style: Styles.textStyle16,
        ),
       const  SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
           '  ($pageCount)',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
