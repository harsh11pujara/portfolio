import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/constants/string_const.dart';
import 'package:my_portfolio/theme/app_theme.dart';
import 'package:my_portfolio/utils/check_device.dart';

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
          SizedBox(
            width: 600,
            // height: 800,
            child: Stack(
              children: [
                Positioned( left: 150 ,child: SizedBox(height: 200, width: 120, child: SvgPicture.asset('assets/images/image_bg_dots.svg', fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.pink[50]!, BlendMode.srcIn),))),
                Positioned(left: 210, top: 40,child: SizedBox(
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
          child: Padding(
            padding: const EdgeInsets.only(left: 150, right: 100, bottom: 100),
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

class ImageClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, 450);
    path.lineTo(300, 350);
    path.lineTo(300, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

 
 

}
