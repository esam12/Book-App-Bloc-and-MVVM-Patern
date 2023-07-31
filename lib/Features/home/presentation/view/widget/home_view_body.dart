import 'package:bookly_app_bloc/Features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly_app_bloc/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_selller_list_view.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers:  [
        SliverToBoxAdapter(
            child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              CustomAppBar(),
              FeatureBooksListView(),
              SizedBox(height: 50),
              Text(
                "Best Seller",
                style: Styles.textStyle18,
              ),
              SizedBox(height: 20),
              //BestSellerListView()
            ],
          ),
        )),
         SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
