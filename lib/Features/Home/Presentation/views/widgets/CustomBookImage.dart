import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  final String imageData;
  final double width;
  final double height;

  const CustomBookImage({
    this.imageData = AssetsData.Logo,
    this.width = 2.7,
    this.height = 4.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: width / height,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: DecorationImage(
                image: AssetImage(imageData), fit: BoxFit.fill)),
      ),
    );
  }
}
