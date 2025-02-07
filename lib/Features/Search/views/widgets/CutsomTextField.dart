import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CutsomTextField extends StatelessWidget {
  const CutsomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Search',
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const Opacity(
                  opacity: 0.8, child: Icon(FontAwesomeIcons.magnifyingGlass))),
          focusedBorder: BuildOutlineInputBorder(),
          enabledBorder: BuildOutlineInputBorder()),
    );
  }

  OutlineInputBorder BuildOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.7),
        ),
        borderRadius: BorderRadius.circular(20));
  }
}
