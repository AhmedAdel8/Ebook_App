// ignore_for_file: prefer_const_constructors

import 'package:ebook_app/Features/Home/presentation/views/widgets/Best_Seller_List_Viem_Item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BookListViemItem(),
        );
      },
    );
  }
}
