import 'package:bookly_app/Features/Home/Data/Models/BookModel/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'CustomButton.dart';

class BuildCustomButton extends StatelessWidget {
  final BookModel bookModel;
  const BuildCustomButton({required this.bookModel, super.key});

  Future<void> Lunch() async {
    final Uri url = Uri.parse(bookModel.volumeInfo!.previewLink! ?? 'hhh');
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      
    }
  }
  String getView()
  {
   return (bookModel.volumeInfo!.previewLink==null ? 'Not Avilable' : 'Free Perview');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            onPressed: () {},
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(14),
              bottomLeft: Radius.circular(14),
            ),
            backGroundColor: Colors.white,
            textColor: Colors.black,
            textName: bookModel.saleInfo!.price,
            fontSize: 18,
          )),
          Expanded(
              child: CustomButton(
                  onPressed: () async {
                    await Lunch();
                  },
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                  backGroundColor: const Color(0xffEF8262),
                  textColor: Colors.white,
                  textName: (getView()),
                  fontSize: 16)),
        ],
      ),
    );
  }
}
