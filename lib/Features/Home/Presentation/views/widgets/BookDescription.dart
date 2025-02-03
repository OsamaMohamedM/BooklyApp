import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookDescription extends StatelessWidget {
const BookDescription({ super.key });

  @override
  Widget build(BuildContext context){
    return   Column(
      children: [
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
      ],
    );
  }
}