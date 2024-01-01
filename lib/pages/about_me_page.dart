import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/check_device.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth(context),
      // decoration: BoxDecoration(),
      child: Stack(
        children: [
          // Positioned(top: 0,child: SizedBox(child: SvgPicture.asset('assets/images/home_about_bg.svg',fit: BoxFit.scaleDown, width: deviceWidth(context)/1.1, alignment: Alignment.centerLeft,))),
          // Column(children: [
          //   CustomAppbar(),
          // ],)
        ],
      ),
    );
  }
}
