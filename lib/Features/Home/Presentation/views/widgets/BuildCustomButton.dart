import 'package:bookly_app/Features/Home/Presentation/views/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class BuildCustomButton extends StatelessWidget {
const BuildCustomButton({ super.key });

  @override
  Widget build(BuildContext context){
    return const Padding(
      padding:  EdgeInsets.all(8.0),
      child:  
      Row(
        children:  [
          Expanded(
          child: CustomButton(
           borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
           ), 
           backGroundColor: Colors.white,
            textColor: Colors.black,
            textName: '19.99\$',  
            )), 
          Expanded(
          child: CustomButton(
           borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
           ), 
           backGroundColor: Color(0xffEF8262),
            textColor: Colors.white, 
            textName: 'Free Preview',  
            )), 
         
        ],),
    );
  }
}