import 'package:bookly_app_bloc/Features/home/presentation/view/widget/best_seller_listview_item.dart';
import 'package:bookly_app_bloc/Features/search/presentaion/view/widgets/custom_search_text_field.dart';
import 'package:bookly_app_bloc/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SearchviewResultListview(),
          ),
        ],
      ),
    );
  }
}

class SearchviewResultListview extends StatelessWidget {
  const SearchviewResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: ((context, index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerListViewItem(),
          )),
    );
  }
}
