import 'package:flower_shop/utils/colors.dart';
import 'package:flutter/material.dart';
import 'widgets/category_card.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/product_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            //appbar code
            const CustomAppBar(),
            const SizedBox(
              height: 15,
            ),
            //product Search Section
            TextFormField(
              cursorColor: kprimaryClr,
              decoration: InputDecoration(
                  fillColor: klightGrayClr,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Search Here...',
                  prefixIcon: const Icon(
                    Icons.search,
                    color: kprimaryClr,
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            //category Section
            const CategoryCard(),

            const SizedBox(
              height: 15,
            ),
            //product Section
            ProductSection(),
          ]),
        ),
      ),
    );
  }
}
