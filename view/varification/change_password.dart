import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/auth/sign_in/emaail_pass.dart';
import 'package:scrapo/view/auth/sign_up/widgets/custom_textform.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
          const Center(
            child: Column(
              children: [
                Text(
                  'Scrapo',
                  style: TextStyle(
                    fontSize: 31,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'RECYCLING ONLINE',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 80.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'New Password',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CustomTextField(
                  hintText: '-----------',
                  controller: TextEditingController(),
                ),
                SizedBox(height: 40.h),
                const Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CustomTextField(
                  hintText: '------------',
                  controller: TextEditingController(),
                ),
                SizedBox(height: 120.h),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EmailPassword()));
                  },
                  child: Container(
                    height: 65.h,
                    width: 370.w,
                    decoration: BoxDecoration(
                      color: const Color(0xff0CBC8B),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: Text(
                        'Change Password',
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
          )
        ]));
  }
}
