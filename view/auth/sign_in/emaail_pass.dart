import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/auth/sign_up/widgets/custom_textform.dart';
import 'package:scrapo/view/forgot/forgot_screen.dart';
import 'package:scrapo/view/home/home_screen.dart';

class EmailPassword extends StatelessWidget {
  const EmailPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
            SizedBox(height: 40.h),
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
            SizedBox(height: 40.h),
            Center(
              child: Column(
                children: [
                  const Text(
                    'Scrapo',
                    style: TextStyle(
                      fontSize: 31,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'RECYCLING ONLINE',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  const Text(
                    'Login now to access faster Service \n more tha 120+ location.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 80.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        CustomTextField(
                          hintText: 'Your Email',
                          controller: TextEditingController(),
                        ),
                        SizedBox(height: 30.h),
                        const Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        CustomTextField(
                          hintText: 'Your Password',
                          controller: TextEditingController(),
                        ),
                        SizedBox(height: 15.h),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 5),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotScreen()));
                                },
                                child: const Text(
                                  'Forgot password?',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  ),
                              )
                            ],
                                                   ),
                         ),
                        SizedBox(height: 30.h),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
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
                                'Log in',
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
                ],
              ),
            )
          ]),
        ));
  }
}
