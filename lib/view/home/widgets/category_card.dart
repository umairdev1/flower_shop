import 'package:flutter/material.dart';

import '../../../data/category_data.dart';
import '../../../utils/colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.builder(
          itemCount: categoryData.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Container(
                  width: 125,
                  decoration: BoxDecoration(
                    color: categoryData[index].active
                        ? kprimaryClr
                        : klightGrayClr,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        categoryData[index].icon,
                        color:
                            categoryData[index].active ? kwhiteClr : kblackClr,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        categoryData[index].title,
                        style: TextStyle(
                            color: categoryData[index].active
                                ? kwhiteClr
                                : kblackClr,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}
