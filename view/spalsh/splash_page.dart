import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scrapo/view/onBoard/onBoarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const splashDuration = Duration(seconds: 5);
  @override
  void initState() {
    super.initState();
    Future.delayed(splashDuration, () {
      navigateToNextScreen();
    });
  }

  void navigateToNextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/Group.png'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: const Column(
              children: [
                Text(
                  'Scrapo',
                  style: TextStyle(
                    fontSize: 58,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'RECYCLING ONLINE',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 36.h),
          Expanded(
            child: SizedBox(
              height: 251.h,
              width: 410.w,
              child: SvgPicture.asset(
                'assets/splashlogo.svg',
                          fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
