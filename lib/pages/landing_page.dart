import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/utils/check_device.dart';
import 'package:my_portfolio/widgets/appbar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: deviceWidth(context),
        // decoration: BoxDecoration(),
        child: Stack(
          children: [
            SvgPicture.asset('assets/images/landing_bg.svg',fit: BoxFit.fitHeight, width: deviceWidth(context)/1.1  , height: double.infinity, alignment: Alignment.centerLeft),
            Column(children: [
              CustomAppbar(),
            ],)
          ],
        ),
      ),
    );
  }
}

