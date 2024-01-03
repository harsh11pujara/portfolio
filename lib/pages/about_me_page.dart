import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/utils/check_device.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth(context),
      height: 1000,
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 1000,
            height: 700,
            child: Stack(
              children: [

                SizedBox(height: 150, width: 85, child: SvgPicture.asset('assets/images/dots_new.svg', fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.pink[50]!, BlendMode.srcIn),)),
                // Positioned(left: 100, top: 0,child: ClipPath(
                //   clipper: ImageClipper(),
                //   child: Image.asset('assets/images/profile_image/profile.jpg', fit: BoxFit.fill,),
                // ))
              ],
            ),
          )
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
    path.lineTo(0, 400);
    path.lineTo(200, 300);
    path.lineTo(200, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

 
 

}
