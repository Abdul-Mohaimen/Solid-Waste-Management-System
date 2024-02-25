import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/auth/sign_in/emaail_pass.dart';
import 'package:scrapo/view/auth/sign_up/widgets/custom_textform.dart';
import 'package:scrapo/view/varification/send_code.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
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
                  'Seems you lost your key',
                  style: TextStyle(
                    fontSize: 29,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20.h),
                const Text(
                  'Please input your email to get code verification to reset your password.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 100.h),
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
                SizedBox(height: 5.h),
                CustomTextField(
                  hintText: 'Your Email',
                  controller: TextEditingController(),
                ),
                SizedBox(height: 35.h),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SendCode()));
                  },
                  child: Container(
                    height: 65.h,
                    width: 360.w,
                    decoration: BoxDecoration(
                      color: const Color(0xff0CBC8B),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: Text(
                        'Send code',
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
                      "Have a problem? ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffA29898),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EmailPassword()));
                        },
                        child: const Text(
                          'Contact Us',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white70,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 36.h),
          Expanded(
            child: SizedBox(
              height: 251.h,
              width: 410.w,
              child: Image.asset(
                'assets/illustration 1.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ]));
  }
}
