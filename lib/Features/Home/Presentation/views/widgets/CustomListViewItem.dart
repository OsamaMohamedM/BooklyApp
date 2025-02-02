import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  late String? ImageData = AssetsData.Logo;
   double? Width = 2.7, Height = 4;
  CustomListViewItem({this.Width , this.Height , this.ImageData,super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Width! / Height! ,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image:  DecorationImage(
                image: AssetImage(ImageData!), fit: BoxFit.fill)),
      ),
    );
  }
}
