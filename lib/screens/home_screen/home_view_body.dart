import 'package:bookly_app/shared/custom_app_bar.dart';
import 'package:bookly_app/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height/3,
      child: ListView.builder(
          itemBuilder:(context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: FeaturedListViewItem(),
            );
          } ,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
Widget FeaturedListViewItem(){
  return   AspectRatio(
    // width/height
    aspectRatio: 2.7/4,
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
  );
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    BookingRate(),
                  ],
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}

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
            child: BestSellerListViewItem(),
          );
          },
      );
  }
}

Widget BookingRate(){
  return Row(
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
      Text(
        '(245)',
        style: Styles.textStyle14.copyWith(
          color: const Color(0xff707070),
        ),
      ),
    ],
  );
}