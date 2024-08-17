// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ebook_app/Features/Home/presentation/views/widgets/Best_Seller_List_Viem_Item.dart';
import 'package:ebook_app/Features/Home/presentation/views/widgets/Featured_Books_List_View.dart';
import 'package:ebook_app/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:ebook_app/constants.dart';
import 'package:ebook_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
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
          SizedBox(
            height: 20,
          ),
          BestSellerListViemItem(),
        ],
      ),
    );
  }
}
