import 'package:cached_network_image/cached_network_image.dart';
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
    return   ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: AspectRatio(
        aspectRatio: width / height,
        child: CachedNetworkImage(
          imageUrl: imageData ,
          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.gpp_maybe),  
           fit: BoxFit.fill,)
      ),
    );
  }
}
