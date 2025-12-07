import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(kLogo, width: 100),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouters.kSearchView);
            },
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
