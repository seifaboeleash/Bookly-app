import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/BestSellerListViewItem.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeBiewBody extends StatelessWidget {
  const HomeBiewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(
            height: 10
          ),
          FeaturedListView(),
          SizedBox(
            height: 30
          ),
          Text(
            'Best Seller',
             style: Styles.textStyle18),
          SizedBox(
          height: 20
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}
