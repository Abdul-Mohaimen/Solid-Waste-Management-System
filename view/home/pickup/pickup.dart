import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/auth/sign_up/widgets/custom_textform.dart';
import 'package:scrapo/view/home/rates/widgets/bottom_appbar.dart';
import 'package:scrapo/view/home/rates/widgets/custom_floating.dart';

class PickUpScreen extends StatelessWidget {
  const PickUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        bottomNavigationBar: const CustomBottomAppbar(),
        floatingActionButton: const CustomFloating(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 20.h),
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
            SizedBox(height: 5.h),
             Center(
              child: Column(
                children: [
                  const Text(
                    'Request A Pickup',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    'Rewind - Scrap Rates',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Image.asset('assets/image 2.png'),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Group 2372.png'),
                      SizedBox(width: 40.w),
                      Image.asset('assets/Group 2371.png'),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10.h),
                    CustomTextField(
                      hintText: 'Your Name', 
                      controller: TextEditingController(),
                      ),
                     SizedBox(height: 10.h),
                    CustomTextField(
                      hintText: 'Enter Your Email', 
                      controller: TextEditingController(),
                      ),
                       SizedBox(height: 10.h),
                    CustomTextField(
                      hintText: 'Phone No :', 
                      controller: TextEditingController(),
                      ),
                       SizedBox(height: 10.h),
                    CustomTextField(
                      hintText: 'Quantity Kg', 
                      controller: TextEditingController(),
                      ), 
                     SizedBox(height: 20.h), 
                     Container(
                      width: 320.w,
                      height: 100.h,
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Enter Address',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                     ),
                     SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 152.w,
                        height: 40.h,
                        color:const Color(0xff247430),
                        child: const Center(
                          child: Text(
                            'Send a Message',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
                        ),
                      ),
                      SizedBox(width: 15.w),
                      Container(
                        width: 150.w,
                        height: 40.h,
                        color:const Color(0xff247430),
                        child: const Center(
                          child: Text(
                            'Scrap Rates',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
                        ),
                      ),
                    ], 
                  ) ,
                  SizedBox(height: 10.h),
                  const Divider(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
