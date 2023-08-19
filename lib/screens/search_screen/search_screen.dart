import 'package:bookly_app/screens/home_screen/best_seller_listView.dart';
import 'package:bookly_app/shared/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_search_text_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchTextField(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Search Result',
                style: Styles.textStyle16,
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(child: SearchResultListView()),
            ],
          ),
        ),
      ),
    );
  }
}
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 15,
        itemBuilder: (context,index){
          return  Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: BookListViewItem(),
          );
        },
      );
  }
}

