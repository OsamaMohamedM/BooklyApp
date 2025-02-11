import 'package:bookly_app/Features/Search/views/widgets/TextFieldSection.dart';
import 'package:flutter/material.dart';
import '../../../Home/Presentation/views/widgets/HomeView/NewestItem/NewestBooksListView.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: TextFieldSection()),
        BookWithDetailsListView()
      ],
    );
  }
}
