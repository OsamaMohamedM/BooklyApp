import 'package:bookly_app/Features/Home/Presentation/views/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class BuildCustomButton extends StatelessWidget {
  const BuildCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14),
              bottomLeft: Radius.circular(14),
            ),
            backGroundColor: Colors.white,
            textColor: Colors.black,
            textName: '19.99\$',
            fontSize: 18,
          )),
          Expanded(
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
