// ignore_for_file: prefer_const_constructors

import 'package:ebook_app/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:ebook_app/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:ebook_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:ebook_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: CuatomBookImage(),
          ),
          SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
