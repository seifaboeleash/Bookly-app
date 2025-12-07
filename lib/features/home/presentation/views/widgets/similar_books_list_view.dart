import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_Book_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class similarBooksListView extends StatelessWidget {
  const similarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.Books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final Book = state.Books[index];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: customBookImage(
                    imageUrl: Book.volumeInfo.imageLinks.thumbnail!,
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFauilre) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
