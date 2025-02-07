import 'package:bookly_app/Features/Search/views/widgets/CutsomTextField.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class TextFieldSection extends StatelessWidget {
  const TextFieldSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          CutsomTextField(),
          SizedBox(
            height: 15,
          ),
          Text(
            "Result",
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
