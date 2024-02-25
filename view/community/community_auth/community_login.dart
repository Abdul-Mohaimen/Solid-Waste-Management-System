import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/auth/sign_up/widgets/custom_textform.dart';
import 'package:scrapo/view/community/submit/community_submit.dart';

class CommunityLogin extends StatelessWidget {
  const CommunityLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            SizedBox(height: 10.h),
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
                    'Welcome to \nScrapo Community',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Full Name',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        CustomTextField(
                          hintText: 'Your Name',
                          controller: TextEditingController(),
                        ),
                        SizedBox(height: 20.h),
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
                        SizedBox(height: 20.h),
                        const Text(
                          'Phone',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        CustomTextField(
                          hintText: 'Phone Number',
                          controller: TextEditingController(),
                        ),
                        SizedBox(height: 20.h),
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
                        SizedBox(height: 50.h),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CommunitySubmit()));
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
                                'Log In',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account? ",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             const EmailPassword()));
                                },
                                child: const Text(
                                  'SignUp',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      ),
                                ))
                          ],
                        )
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
