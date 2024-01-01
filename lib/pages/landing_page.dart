import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/check_device.dart';
import 'package:my_portfolio/widgets/appbar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      color: Colors.transparent,
      width: deviceWidth(context),
      // decoration: BoxDecoration(),
      child: Column(children: [
        CustomAppbar(),
      ],),
    );
  }
}

