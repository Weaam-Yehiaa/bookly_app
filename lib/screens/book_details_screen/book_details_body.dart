import 'package:bookly_app/screens/book_details_screen/similar_books_listview.dart';
import 'package:bookly_app/screens/home_screen/best_seller_listView.dart';
import 'package:bookly_app/screens/home_screen/featured_books_listView.dart';
import 'package:bookly_app/shared/components.dart';
import 'package:bookly_app/shared/styles.dart';
import 'package:flutter/material.dart';

import '../../shared/constants.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        backgroundColor:kPrimaryColor,
        leading: IconButton(
            onPressed: (){},
          icon: Icon(
              Icons.close_rounded,
            size: 32,
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(
                  Icons.shopping_cart_outlined,
                size: 32,
              ),
          ),
        ],
      ) ,
      body:CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all( 20.0),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: width * .26),
                    child: CustomBookItem(),
                  ),
                  const SizedBox(
                    height: 43,
                  ),
                  Text(
                    'The Jungle Book',
                    style: Styles.textStyle30.copyWith(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Opacity(
                    opacity: .7,
                    child: Text(
                      'Rudyard Kipling',
                      style: Styles.textStyle18.copyWith(
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  BookRating(
                      mainAxisAlignment:  MainAxisAlignment.center
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        Expanded(child: CustomButton(
                          text: '199',
                          backgroundColor: Colors.white,
                          textColor: Colors.black,
                          borderRaduis: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft:  Radius.circular(12),
                          ),
                        )),
                        Expanded(child: CustomButton(
                          text: 'Free Preview',
                          fontSize: 16,
                          backgroundColor: Color(0xffEF8262),
                          textColor: Colors.white,
                          borderRaduis: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight:  Radius.circular(12),
                          ),
                        )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(height: 60,),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle16,
                    ),
                  ),
                  SizedBox(height: 30,),
                  SimilarBooksListview(),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}

