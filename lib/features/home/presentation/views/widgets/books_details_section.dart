import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_Book_Image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel,});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: width * .25),
          child: customBookImage(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
        ),
        Gap(20),
        Text(
        bookModel.volumeInfo.title!  ,
           style: Styles.textStyle30),
        Gap(10),
        Text(
          bookModel.volumeInfo.authors![0],
          style: Styles.textStyle18.copyWith(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
        ),
        Gap(10),
        BookRating(
          date: bookModel.volumeInfo.publishedDate!,
        ),
        Gap(20),
        BooksAction(),
      ],
    );
  }
}
