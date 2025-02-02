
import 'package:bookly_app/Features/Home/Presentation/views/widgets/BookRating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'CustomListViewItem.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomListViewItem(Width: 2.5),
        const SizedBox(width:30 ,),
         Expanded(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*0.5,
                child:const Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.textStyle20,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
             const  SizedBox(height: 3,),
             const  Text(
                'J.k. Rowling',
                style: Styles.textStyle14,
              ),
             const  SizedBox(height: 3,),
              Row(
                children: [
                  Text('19.9 \$' , style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),),
                  const Spacer(),
                  const BookRating()
                ],
              )
           
            ],
                   ),
         )
      ],
    );
  }
}
