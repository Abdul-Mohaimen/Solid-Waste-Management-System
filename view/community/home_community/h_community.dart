import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/home/home_screen.dart';
import 'package:scrapo/view/home/rates/widgets/bottom_appbar.dart';
import 'package:scrapo/view/home/rates/widgets/custom_floating.dart';

class CommunityHome extends StatelessWidget {
  const CommunityHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomAppbar(),
      floatingActionButton: const CustomFloating(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 34,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 15.h),
          Center(
            child: Column(
              children: [
                const Text(
                  'Services',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'Rewind - Services',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  width: 370.w,
                  height: 270.h,
                  decoration: BoxDecoration(
                    color: const Color(0xff0CBC8B),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/Rectangle 1744.png',
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 13),
                          child: Text(
                            'Explore Community With Us',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ]),
                ),
                SizedBox(height: 10.h),
                const Text(
                  'Silent Features',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.circle,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10.w),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Icon(
                            Icons.circle,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10.w),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Icon(
                            Icons.circle,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10.w),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Icon(
                            Icons.circle,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10.w),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Icon(
                            Icons.circle,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10.w),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                  child: Container(
                    width: 220.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child:  const Center(
                      child: Text(
                            'Let’s Start',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                            ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
