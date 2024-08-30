// ignore_for_file: prefer_const_constructors

import 'package:ebook_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CuatomBookImage extends StatelessWidget {
  const CuatomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4, // width / height.
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
