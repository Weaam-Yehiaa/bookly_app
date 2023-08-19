import 'package:bookly_app/shared/custom_app_bar.dart';
import 'package:bookly_app/shared/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'best_seller_listView.dart';
import 'featured_books_listView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomAppBar(),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: FeaturedBooksListView(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 40),
                  child: Row(
                    children: [
                      Text(
                          'Best Seller',
                          style: Styles.textStyle18
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          SliverFillRemaining(
            child:   Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: BestSellerListView(),
            ),
          ),
        ],
      ),
    );
  }
}
