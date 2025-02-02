import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/Colors.dart';
import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
const BookRating({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Row(
      children: [
         Icon(
          FontAwesomeIcons.solidStar , 
          color: MyColors.StarColor,
        ),
        SizedBox(width: 6,),
        Text('4.8' ,style: Styles.textStyle16,),
        SizedBox(width: 3,),
        Text('(1511)' ,style: Styles.textStyle14,),
      ],
    );
  }
}