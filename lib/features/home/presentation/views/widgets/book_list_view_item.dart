import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_Book_Image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: () => GoRouter.of(context).push(AppRouters.kBookDetails , extra: bookModel),
      child: Row(
        children: [
          SizedBox(
            height: 125,
            child: customBookImage(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    bookModel.volumeInfo.title!,
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  bookModel.volumeInfo.authors![0],
                   style: Styles.textStyle14),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                     BookRating(
                      date: bookModel.volumeInfo.publishedDate!,
                     ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// import 'package:bookly_app/constants.dart';
// import 'package:bookly_app/core/utils/app_routers.dart';
// import 'package:bookly_app/core/utils/styles.dart';
// import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:go_router/go_router.dart';
// import 'package:google_fonts/google_fonts.dart';

// class BookListViewItem extends StatelessWidget {
//   const BookListViewItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => GoRouter.of(context).push(AppRouters.kBookDetails),
//       child: Row(
//         children: [
//           SizedBox(
//             height: 125,
//             child: AspectRatio(
//               aspectRatio: 2.5 / 4,
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Image.asset('assets/images/Book_1.png'),
//               ),
//             ),
//           ),
//           const SizedBox(width: 30),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width * .5,
//                   child: Text(
//                     'Harry Potter and the Goblet Fire',
//                     style: Styles.textStyle20.copyWith(
//                       fontFamily: kGtSectraFine,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text('J.K. Rowling', style: Styles.textStyle14),
//                 const SizedBox(height: 8),
//                 Row(
//                   children: [
//                     Text(
//                       '19.99 €',
//                       style: Styles.textStyle20.copyWith(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const Spacer(),
//                     const BookRating(),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
