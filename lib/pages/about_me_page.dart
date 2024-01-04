import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/constants/string_const.dart';
import 'package:my_portfolio/theme/app_theme.dart';
import 'package:my_portfolio/utils/check_device.dart';
import 'package:my_portfolio/utils/custom_image_clipper.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth(context),
      height: 500,
      margin: const EdgeInsets.only(top: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            // height: 800,
            child: Stack(
              children: [
                Positioned( left: deviceWidth(context) * 0.1 ,child: SizedBox(height: 200, width: 120, child: SvgPicture.asset('assets/images/image_bg_dots.svg', fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.pink[50]!, BlendMode.srcIn),))),
                Positioned(left: deviceWidth(context) * 0.15, top: 40,child: SizedBox(
                  width: 300,
                  height: 450,
                  child: ClipPath(
                    clipper: ImageClipper(),
                    child: Image.asset('assets/images/profile_image/profile.jpg', fit: BoxFit.cover, height: 450, alignment: Alignment.center),
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            flex: 6,
          child: Padding(
            padding: EdgeInsets.only(left: deviceWidth(context) * 0.15, right:  deviceWidth(context) * 0.05, bottom:  deviceWidth(context) * 0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(aboutMeTitle, style: AppTheme.topicTitleTextStyle,),
                const SizedBox(height: 20,),
                Text(aboutMeDesc, style: AppTheme.topicDescriptionTextStyle,)
              ],
            ),
          ))
        ],
      ),
    );
  }
}

