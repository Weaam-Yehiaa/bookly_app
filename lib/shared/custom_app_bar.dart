import 'package:bookly_app/shared/utils/app_router.dart';
import 'package:bookly_app/shared/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Padding(
      padding: const EdgeInsets.only(top:50,right: 20,left: 20,bottom: 40 ),
      child: Row(
        children: [
          Image.asset(
              AssetsData.logo,
              height:size.height/36 ,
          ),
          Spacer(),
          IconButton(
              onPressed: (){
                GoRouter.of(context).push(AppRouter.kSearchScreen);
              },
              icon:const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 28,
              ),
            ),
        ],
      ),
    );
  }
}
