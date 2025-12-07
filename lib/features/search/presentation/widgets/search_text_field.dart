import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class searchTextField extends StatelessWidget {
  const searchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(16),
        ),
        hintText: 'Search...',
        hintStyle: TextStyle(color: Colors.white),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
