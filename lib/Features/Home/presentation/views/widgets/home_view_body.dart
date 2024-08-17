// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ebook_app/Features/Home/presentation/views/widgets/Featured_Books_List_View.dart';
import 'package:ebook_app/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:ebook_app/constants.dart';
import 'package:ebook_app/core/utils/assets.dart';
import 'package:ebook_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18.copyWith(
              fontFamily: kGtSectraFine,
            ),
          ),
          BestSellerListViemItem(),
        ],
      ),
    );
  }
}

class BestSellerListViemItem extends StatelessWidget {
  const BestSellerListViemItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4, // width / height.
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.testImage,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
