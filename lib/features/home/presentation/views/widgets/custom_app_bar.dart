import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28 , vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(kLogo, width: 100,),
          IconButton(
            onPressed: () {},
             icon:  Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
              size: 24
              ,
              ),
             ),
        ],
      ),
    );
  }
}