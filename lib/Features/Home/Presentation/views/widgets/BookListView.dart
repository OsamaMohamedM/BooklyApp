import 'package:bookly_app/Features/Home/Presentation/views/widgets/CustomBookImage.dart';
import 'package:bookly_app/Features/Home/Presentation/views/widgets/CustomErrorWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Data/Models/BookModel/BookModel.dart';
import '../../../View_Model/Cubits/GetALLData/cubit/get_all_data_cubit.dart';
import '../../../View_Model/Cubits/GetALLData/cubit/get_all_data_state.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/AppRoutes.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFeaturedCubit, GetFeaturedState>(
      builder: (context, state) {
        if (state is GetFeaturedInitial) {
          return const Center(child: Text('Waiting to load books...'));
        } else if (state is GetFeaturedLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is GetFeaturedSuccess) {
          return _buildBookList(context, state.books);
        } else if (state is GetFeaturedFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildBookList(BuildContext context, List<BookModel> books) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRoutes.bookDetails , extra: books[index]);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: CustomBookImage(
                  imageData: books[index].volumeInfo!.imageLinks!.thumbnail!),
            ),
          );
        },
      ),
    );
  }
}
