import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/utils/app_colors.dart';

Widget appBarButton({required bool isSelected, required String text, required Function() onTap}){
  return InkWell(
    onTap: onTap,
    child: Container(
      alignment: Alignment.bottomRight,
      height: 120,
      width: 150,
      child: Stack(
        children: [
          isSelected ? SvgPicture.asset('assets/images/navbar_selected_splash.svg', height: 100, width: 120, alignment: Alignment.bottomRight,) : Container(),
          Positioned(top: 30, left: text == 'Connect' ? 48 : 55,child: Text(text, style: TextStyle(color: isSelected ? appBarSelectedText : appBarText),))
        ],
      ),
    ),
  );
}