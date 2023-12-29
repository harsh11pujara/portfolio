import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/landing_page.dart';
import 'package:my_portfolio/pages/skill_page.dart';
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
      body: SingleChildScrollView(child: Column(
        children: [
          /// LANDING PAGE
          Container(height: deviceHeight(context)/1.1, child: LandingPage(),),
          /// Skills Stack
          Container(height: deviceHeight(context)/1.2, child: SkillsPage()),
          /// Work Projects
          Container(height: 500, color: Colors.blue[500],),
          /// About Me
          Container(height: 500, color: Colors.blue[300],),
          /// Contact me
          Container(height: 500, color: Colors.blue[100],)
        ],
      )),
    );
  }
}
