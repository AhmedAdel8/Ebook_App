// ignore_for_file: prefer_const_constructors

import 'package:ebook_app/Features/Search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}
