import 'package:bookly_app/Features/Home/View_Model/Cubits/GetNewestData/cubit/get_newest_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../core/utils/AppRoutes.dart';
import '../../NewestBooksItemView.dart';

class BookWithDetailsListView extends StatelessWidget {
  const BookWithDetailsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewestDataCubit, GetNewestDataState>(
      builder: (context, state) {
        if (state is GetNewestDataSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRoutes.bookDetails ,extra: state.Books[index]);
                    },
                    child: BookListViewItem(
                      book: state.Books[index],
                    ));
              },
              childCount: state.Books.length,
            ),
          );
        } else if (state is GetNewestDataFaliure) {
          return  SliverToBoxAdapter(
            child: Center(
              child: Text(state.message),
            ),
          );
        } else {
          return const SliverToBoxAdapter(child:  Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
