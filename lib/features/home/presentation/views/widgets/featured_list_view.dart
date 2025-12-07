import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/data/models/book_model/volume_info.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_Book_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
              itemCount: state.Books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final book = state.Books[index];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () => GoRouter.of(
                      context,
                    ).push(AppRouters.kBookDetails, extra: state.Books[index]),
                    child: customBookImage(
                      imageUrl:
                          book.volumeInfo.imageLinks?.thumbnail ??
                          'https://www.google.com/imgres?q=placeholder&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F3%2F3f%2FPlaceholder_view_vector.svg%2F330px-Placeholder_view_vector.svg.png&imgrefurl=https%3A%2F%2Far.m.wikipedia.org%2Fwiki%2F%25D9%2585%25D9%2584%25D9%2581%3APlaceholder_view_vector.svg&docid=SsBPafvDxcQ6rM&tbnid=rlw53hfETn7POM&vet=12ahUKEwijmcrv09GQAxX_1QIHHewYE_UQM3oECBkQAA..i&w=330&h=257&hcb=2&ved=2ahUKEwijmcrv09GQAxX_1QIHHewYE_UQM3oECBkQAA',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
