import 'package:ebook_app/Features/Home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:ebook_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:ebook_app/core/widgets/custom_error_widget.dart';
import 'package:ebook_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookImage(
                      imageUrl:
                          'https://pngimg.com/uploads/book/book_PNG51090.png',
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage:state.errMessage);
        }else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
