import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Services extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String? imageUrl;

  const Services({
    super.key,
    this.title,
    this.imageUrl,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    final List<Services> recentList = [
      const Services(
        title: "For Students",
        subTitle:
            "On-Demand Doorstep Pickups",
        imageUrl: 'assets/image 16.png',
      ),
      const Services(
        title: "Trust",
        subTitle:
            "TAccurate Digital Weighing",
        imageUrl: 'assets/illustration 1.png',
      ),
      const Services(
        title: "Security",
        subTitle:
            "DSafety (Trained & Verified Staff)",
        imageUrl: 'assets/on3.png',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 350.h,
        child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: recentList.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    width: 350.w,
                    margin: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            recentList[index].imageUrl!,
                            width: 230.w,
                            height: 160.h,
                            ),
                          SizedBox(height: 10.h),  
                          Center(
                            child: Text(
                              recentList[index].title!,
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.security,
                                color: Colors.white,
                                ),
                              SizedBox(width: 5.w),
                              Text(
                                recentList[index].subTitle!,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                           SizedBox(height: 5.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.security,
                                color: Colors.white,
                                ),
                              SizedBox(width: 5.w),
                              Text(
                                recentList[index].subTitle!,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                           SizedBox(height: 5.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.security,
                                color: Colors.white,
                                ),
                              SizedBox(width: 5.w),
                              Text(
                                recentList[index].subTitle!,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w,)
                ],
              );
            }
            ),
      ),
    );
  }
}
