import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/home/home_screen.dart';

class CommunitySubmit extends StatelessWidget {
  const CommunitySubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
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
            SizedBox(height: 60.h),
             Center(
              child: Column(
                children: [
                  const Text(
                    'Scrapo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 31,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    'RECYCLING ONLINE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 70.h),  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      width: 320.w,
                      height: 300.h,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/image_details.png',
                            fit: BoxFit.cover,
                            ),
                          Positioned(
                            top: 60,
                            left: 75,
                            child: Container(
                              height: 168.h,
                              width: 168.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color:  Colors.white,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.check,
                                  size: 70,
                                  color: Colors.green,
                                  ),
                              ),
                            )
                            )  
                        ],
                      ),
                    ),
                  ),
                 SizedBox(height: 50.h),
                 const Text(
                    'Thank You For Application ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    'we will be intouch shortly',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w500,
                    ),
                  ), 
                SizedBox(height: 50.h),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          },
                          child: Container(
                            height: 60.h,
                            width: 230.w,
                            decoration: BoxDecoration(
                              color:  Colors.black,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Center(
                              child: Text(
                                'Go To Home',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),   
        ],
      ),
    )]));
  }
}