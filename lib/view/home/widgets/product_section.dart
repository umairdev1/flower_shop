import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../data/product_data.dart';
import '../../../utils/colors.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AlignedGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemCount: productData.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: klightGrayClr,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      productData[index].image,
                      height: 200,
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productData[index].category,
                        style: const TextStyle(
                          color: ksecondaryClr,
                        ),
                      ),
                      const Icon(
                        Icons.shopping_basket_outlined,
                        color: ksecondaryClr,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    productData[index].title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    productData[index].desc,
                    maxLines: 2,
                    style: const TextStyle(fontSize: 11, color: kgrayClr),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    productData[index].price,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: kgrayClr),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
