import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/auth/sign_in/emaail_pass.dart';
import 'package:scrapo/view/auth/sign_up/sign_up.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<Map<String, String>> onboardingData = [
    {
      'image': 'assets/Data security.png',
      'title': 'Secure Browsing \n With no limits',
      'subtitle': 'we are committed to always putting \n your safety first',
    },
    {
      'image': 'assets/image 16.png',
      'title': 'Sell your recyclables \n online with Scrapo',
      'subtitle': 'Paper, Plastics , Metals, Appliances',
    },
    {
      'image': 'assets/on3.png',
      'title': 'Get a Secure App Scrapo',
      'subtitle': 'Households & Businesses have \n different needs and we cater \n to each of them',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100.h),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardingData.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                return buildOnboardingPage(onboardingData[index]);
              },
            ),
          ),
          buildCustomIndicator(),
          SizedBox(height: 20.h),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOnboardingPage(Map<String, String> data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            data['image']!,
            width: 250.w,
            height: 250.h,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 80.h),
        Center(
          child: Text(
            data['title']!,
             textAlign: TextAlign.center, 
            style: const TextStyle(
              fontSize: 26,
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Center(
          child: Text(
            data['subtitle']!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 100.h),
             GestureDetector(
               onTap : () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
               },
               child: Container(
                height: 56.h,
                width: 350.w,
                decoration: BoxDecoration(
                  color: const Color(0xff0CBC8B),
                  borderRadius:BorderRadius.circular(25),
                ),
                child: const Center(
                  child: Text(
                    'Create An Account',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                ),
               ),
             ),
             SizedBox(height: 20.h),
             GestureDetector(
              onTap : () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const EmailPassword()));
              },
               child: Container(
                height: 56.h,
                width: 350.w,
                decoration: BoxDecoration(
                  color: const Color(0xff000000),
                  borderRadius:BorderRadius.circular(25),
                ),
                child: const Center(
                  child: Text(
                    'Have an Account? Sign in',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff0CBC8B),
                      fontWeight: FontWeight.w700,
                    ),
                    ),
                ),
               ),
             ),
      ],
    );
  }

  Widget buildCustomIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onboardingData.length,
        (index) => buildIndicatorDot(index),
      ),
    );
  }

  Widget buildIndicatorDot(int index) {
    double size = 11.0;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: _currentPage == index ? Colors.green : Colors.grey,
      ),
    );
  }
}
