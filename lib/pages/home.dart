import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/pages/landing_page.dart';
import 'package:my_portfolio/pages/about_me_page.dart';
import 'package:my_portfolio/utils/check_device.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            width: deviceWidth(context),
            height: 1500,
            child: Stack(
              children: [
                landingBackground(),
                const Column(
                  children: [
                    /// LANDING PAGE
                    LandingPage(),
                    /// About Me
                    AboutMePage(),
                  ],
                ),
              ],
            ),
          ),
          /// Work Projects
          Container(height: 500, color: Colors.blue[500],),
          /// Skills Stack
          Container(height: 500, color: Colors.blue[300],),
          /// Contact me
          Container(height: 500, color: Colors.blue[100],)
        ],
      )),
    );
  }

  Widget landingBackground() {
    return SvgPicture.asset(
      'assets/images/home_about_bg.svg',
      fit: BoxFit.contain,
      // width: deviceWidth(context) / 1.1,
      alignment: Alignment.topLeft,
    );
  }
}
