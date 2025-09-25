import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 125,
          child:  AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16)
        ),
        child: Image.asset('assets/images/Book_1.png'),
        ),
          ),
        ),
        Column(
          children: [
            Text('Harry Potter\n and the Goblet of Fire' ,) ,
          ],
        )
      ],
    );
       
    
  }
}