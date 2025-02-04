import 'package:bookly_app/Features/Search/views/widgets/CutsomTextField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
const SearchViewBody({ super.key });

  @override
  Widget build(BuildContext context){
    return const Column(
      children: [
         CutsomTextField()
      ],
    );
  }


}

