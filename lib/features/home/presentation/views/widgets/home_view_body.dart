import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_Book_Image.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(height: 10),
                FeaturedListView(),
                SizedBox(height: 30),
                Text('Newset Books ', style: Styles.textStyle18),
                SizedBox(height: 20),

                BestSellerListView()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:bookly_app/core/utils/styles.dart';
// import 'package:bookly_app/features/home/presentation/views/widgets/BestSellerListViewItem.dart';
// import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
// import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart' show FeaturedListView;
// import 'package:flutter/material.dart';

// class HomeViewBody extends StatelessWidget {
//   const HomeViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const CustomAppBar(),
//             const SizedBox(height: 10),
//             const FeaturedListView(),
//             const SizedBox(height: 30),
//             const Text(
//               'Best Seller',
//               style: Styles.textStyle18,
//             ),
//             const SizedBox(height: 20),
//             ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: 10,
//               itemBuilder: (context, index) {
//                 return const BestSellerListViewItem();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
