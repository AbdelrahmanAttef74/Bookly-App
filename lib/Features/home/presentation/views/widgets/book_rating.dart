import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          size: 14,
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
        const SizedBox(width: 6.3),
        const Text(
          '4.8',
          style: Styles.testStyle14,
        ),
        const SizedBox(width: 5),
        Text(
          '(2395)',
          style: Styles.testStyle16
              .copyWith(color: Colors.grey, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
