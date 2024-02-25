import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUs extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String? imageUrl;

  const AboutUs({
    super.key,
    this.title,
    this.imageUrl,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    final List<AboutUs> recentList = [
      const AboutUs(
        title: "Convenience",
        subTitle:
            "Doorstep pickup according to\nuser's convenient date & time.",
        imageUrl: 'assets/image 10.png',
      ),
      const AboutUs(
        title: "Trust",
        subTitle:
            "Trained & Verified Pickup \nStaff with Swapeco Smart \nWeighing Scale",
        imageUrl: 'assets/image 10.png',
      ),
      const AboutUs(
        title: "Security",
        subTitle:
            "Doorstep pickup according to\nuser's convenient date & time.",
        imageUrl: 'assets/image 10.png',
      ),
    ];

    return SizedBox(
      height: 113.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: recentList.length,
          itemBuilder: (context, index) {
            return Container(
              width: 245.w,
              margin: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        recentList[index].title!,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(recentList[index].imageUrl!),
                        SizedBox(width: 5.w),
                        Text(
                          recentList[index].subTitle!,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
