// ignore_for_file: prefer_const_constructors

import 'package:ebook_app/Features/Home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BoolDetailsView extends StatelessWidget {
  const BoolDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}
