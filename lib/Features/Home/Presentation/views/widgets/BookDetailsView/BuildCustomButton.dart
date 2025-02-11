import 'package:bookly_app/Features/Home/Data/Models/BookModel/BookModel.dart';
import 'package:flutter/material.dart';

import 'CustomButton.dart';

class BuildCustomButton extends StatelessWidget {
  final String price;
  const BuildCustomButton({required this.price , super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(14),
              bottomLeft: Radius.circular(14),
            ),
            backGroundColor: Colors.white,
            textColor: Colors.black,
            textName: price,
            fontSize: 18,
          )),
          const Expanded(
              child: CustomButton(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                  backGroundColor: Color(0xffEF8262),
                  textColor: Colors.white,
                  textName: 'Free Preview',
                  fontSize: 16)),
        ],
      ),
    );
  }
}
