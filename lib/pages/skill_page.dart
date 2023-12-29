import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/utils/check_device.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth(context),
      // decoration: BoxDecoration(),
      child: Stack(
        children: [
          Positioned(top: -440,child: SizedBox(child: SvgPicture.asset('assets/images/about_me_bg.svg',fit: BoxFit.scaleDown, width: deviceWidth(context)/1.25, alignment: Alignment.centerLeft,))),
          // Column(children: [
          //   CustomAppbar(),
          // ],)
        ],
      ),
    );
  }
}
