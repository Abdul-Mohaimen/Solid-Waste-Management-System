import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/varification/change_password.dart';

class VarifySuccess extends StatelessWidget {
  const VarifySuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                    'Verification \n successful',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
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
                                color:  Color(0xff0CBC8B),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.check,
                                  size: 70,
                                  color: Colors.white,
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
                    'Please input your verification code\nbelow to verify your account.',
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
                                    builder: (context) => const ResetPassword()));
                          },
                          child: Container(
                            height: 60.h,
                            width: 350.w,
                            decoration: BoxDecoration(
                              color: const Color(0xff0CBC8B),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Center(
                              child: Text(
                                'Reset Password',
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