import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class customBookDetailsAppBar extends StatelessWidget {
  const customBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => GoRouter.of(context).pop(),
          child: Icon(Icons.close),
        ),
        Icon(Icons.shopping_cart_outlined),
      ],
    );
  }
}
