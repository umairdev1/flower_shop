import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: const TextSpan(
              text: 'Welcome ',
              style: TextStyle(
                color: ksecondaryClr,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              children: [
                TextSpan(
                    text: 'Mr.Adam',
                    style: TextStyle(
                      color: kblackClr,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ))
              ]),
        ),
        const CircleAvatar(
          backgroundColor: klightGrayClr,
          child: Icon(Icons.notifications_outlined, color: kblackClr),
        )
      ],
    );
  }
}
