import 'package:flutter/material.dart';

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
            child: CustomBookItem(),
          );
        } ,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
Widget CustomBookItem(){
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