import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/theme/app_theme.dart';
import 'package:my_portfolio/utils/check_device.dart';
import 'package:my_portfolio/widgets/appbar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 50),
      color: Colors.transparent,
      width: deviceWidth(context),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        const CustomAppbar(),
        const SizedBox(height: 200,),
        Container(
          padding: const EdgeInsets.only(left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Harsh Pujara', style: AppTheme.nameTextStyle,),
              const SizedBox(height: 10,),
              Text('Engineer + Junior Flutter Developer', style: AppTheme.descriptionTextStyle,),
              const SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                InkWell(onTap: () {}, child: SvgPicture.asset('assets/images/github_logo.svg', height: 30,)),
                SizedBox(width: 20,),
                InkWell(onTap: () {}, child: SvgPicture.asset('assets/images/linkedin_logo.svg', height: 30))
              ],)

            ],
          ),
        ),
      ],),
    );
  }
}

