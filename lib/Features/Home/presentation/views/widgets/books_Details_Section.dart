// ignore_for_file: prefer_const_constructors

import 'package:ebook_app/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:ebook_app/Features/Home/presentation/views/widgets/books_action.dart';
import 'package:ebook_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:ebook_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imageUrl: 'https://pngimg.com/uploads/book/book_PNG51090.png',
          ),
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
          rating: 5,
          count: 250,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 37,
        ),
        BooksAction(),
      ],
    );
  }
}
