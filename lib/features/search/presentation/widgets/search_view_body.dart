import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/search/presentation/widgets/search_list_view.dart';
import 'package:bookly_app/features/search/presentation/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class searchViewBody extends StatelessWidget {
  const searchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchTextField(),
          Gap(20),
          Text('Search Result', style: Styles.textStyle18),
          Gap(20),
          Expanded(child: searchListView()),
        ],
      ),
    );
  }
}
