import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/auth/sign_up/widgets/custom_textform.dart';
import 'package:scrapo/view/community/home_community/h_community.dart';
import 'package:scrapo/view/home/rates/widgets/bottom_appbar.dart';
import 'package:scrapo/view/home/rates/widgets/custom_floating.dart';

class CampusDirector extends StatelessWidget {
  const CampusDirector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const CustomBottomAppbar(),
        floatingActionButton: const CustomFloating(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SingleChildScrollView(
          child: Column(
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
                SizedBox(height: 20.h),
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
              SizedBox(height: 20.h),
              const Text(
                'Campus Director Applications \nNow Open',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10.h),
              const Text(
                'Campus Directors are people who organize \nthe  SCRAPO service programs, and case \nchallenged focused on different industries,\nuniversities, colleges, hostels, & houses.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                width: 380.w,
                height: 700.h,
                color: const Color(0xff0CBC8B),
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.h),
                      //...
                       Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Full Name',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        CustomTextField(
                          hintText: 'Your Name',
                          controller: TextEditingController(),
                        ),
                        SizedBox(height: 20.h),
                        const Text(
                          'Gender',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Colors.white,
                              ),
                             SizedBox(width: 5.w), 
                            const Text('Male'), 
                            SizedBox(width: 10.w,),
                             const Icon(
                              Icons.circle,
                              color: Colors.white,
                              ),
                             SizedBox(width: 5.w), 
                            const Text('Female'),
                             SizedBox(width: 10.w,),
                             const Icon(
                              Icons.circle,
                              color: Colors.white,
                              ),
                             SizedBox(width: 5.w), 
                            const Text('Prefer Not To Say'), 
                          ],
                        ),
                         SizedBox(height: 20.h),
                        const Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        CustomTextField(
                          hintText: 'Email',
                          controller: TextEditingController(),
                        ),
                        SizedBox(height: 20.h),
                        const Text(
                          'Phone',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        CustomTextField(
                          hintText: 'Phone Number',
                          controller: TextEditingController(),
                        ),
                        SizedBox(height: 20.h),
                        const Text(
                          'Select Region',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        CustomTextField(
                          hintText: 'Your Region',
                          controller: TextEditingController(),
                        ),
                         SizedBox(height: 20.h),
                        const Text(
                          'Previous Experience Scrapo',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        CustomTextField(
                          hintText: 'Previous',
                          controller: TextEditingController(),
                        ),
                        SizedBox(height: 20.h),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CommunityHome()));
                          },
                          child: Container(
                            height: 60.h,
                            width: 350.w,
                            decoration: BoxDecoration(
                              color:  Colors.black,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Center(
                              child: Text(
                                'Submit',
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
                  ),
                       //...
                    ],
                  ),
                ),
              ),
            ],
          ),
                )
              ]),
        ));
  }
}
