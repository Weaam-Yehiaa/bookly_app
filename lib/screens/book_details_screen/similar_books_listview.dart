import 'package:flutter/material.dart';

import '../home_screen/featured_books_listView.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height/4.5,
      child: ListView.builder(
        itemBuilder:(context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomBookItem(),
          );
        } ,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
