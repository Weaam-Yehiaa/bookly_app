import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../shared/app_router.dart';
import '../../shared/styles.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(

        physics:const NeverScrollableScrollPhysics() ,
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

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        GoRouter.of(context).push(AppRouter.kBookDetailsScreen);
      } ,
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height/6,
        child: Row(
          children: [
            AspectRatio(
              // width/height
              aspectRatio: 3/4,
              child: Container(
                //to apply border radius inside container
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
                        fit: BoxFit.fill
                    )
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    // show dots if there was more words but no space
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'J.K.Rowling',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        r'19.9 $',
                        style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Spacer(),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}


Widget BookRating({
  MainAxisAlignment mainAxisAlignment=MainAxisAlignment.start
  }){
  return Row(
    mainAxisAlignment: mainAxisAlignment,
    children: [
      Icon(
        FontAwesomeIcons.solidStar,
        color: Color(0xffFFFF4F),
      ),
      const SizedBox(width: 6.3,),
      Text(
        '4.8',
        style: Styles.textStyle16,
      ),
      const SizedBox(width: 5,),
      Opacity(
        opacity: .5,
        child: Text(
          '(245)',
          style: Styles.textStyle14
        ),
      ),
    ],
  );
}