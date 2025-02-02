import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'CustomListViewItem.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,  
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
        return  Padding(
          padding:const EdgeInsets.symmetric(horizontal: 8.0),
          child:  CustomListViewItem(imageData: AssetsData.test),
        );
      }),
    );
  }
}
