import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: 'Free',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Preview',
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// // import 'package:bookly_app/core/utils/styles.dart';
// // import 'package:flutter/material.dart';

// class BooksAction2 extends StatelessWidget {
//   const BooksAction2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           width: 150,
//           height: 50,
//           decoration: BoxDecoration(
//             shape: BoxShape.rectangle,
//             color: Colors.white,

//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(15),
//               bottomLeft: Radius.circular(15),
//             ),
//           ),
//           child: Center(
//             child: Text(
//               '19.99 €',
//               style: Styles.textStyle18.copyWith(color: Colors.black),
//             ),
//           ),
//         ),
//         Container(
//           width: 150,
//           height: 50,
//           decoration: BoxDecoration(
//             shape: BoxShape.rectangle,
//             color: Color(0xffEF8262),
//             borderRadius: BorderRadius.only(
//               topRight: Radius.circular(15),
//               bottomRight: Radius.circular(15),
//             ),
//           ),
//           child: Center(
//             child: Text(
//               'Free Preview',
//               style: Styles.textStyle18.copyWith(color: Colors.white),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
