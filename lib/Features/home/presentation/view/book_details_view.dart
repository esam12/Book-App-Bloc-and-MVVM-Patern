import 'package:bookly_app_bloc/Features/home/presentation/view/widget/books_action_button.dart';
import 'package:bookly_app_bloc/Features/home/presentation/view/widget/custom_book_item.dart';
import 'package:bookly_app_bloc/Features/home/presentation/view/widget/custom_bookdetails_appbar.dart';
import 'package:bookly_app_bloc/Features/home/presentation/view/widget/similar_books_listview.dart';
import 'package:bookly_app_bloc/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'widget/book_rating.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          BooksDetailsViewSection(),
          SizedBox(
            height: 50,
          ),
          SimilarBooksListviewSection()
        ],
      ),
    );
  }
}

class SimilarBooksListviewSection extends StatelessWidget {
  const SimilarBooksListviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}

class BooksDetailsViewSection extends StatelessWidget {
  const BooksDetailsViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 43),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 18),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
