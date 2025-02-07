import 'package:bookly_app/Features/Home/Presentation/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.26, vertical: 15),
      child: const CustomBookImage(
        imageData: AssetsData.test,
      ),
    );
  }
}
