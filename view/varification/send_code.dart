import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/auth/sign_in/emaail_pass.dart';
import 'package:scrapo/view/varification/varify_code.dart';
import 'package:scrapo/view/varification/widgets/otp_widgets.dart';

class SendCode extends StatelessWidget {
  const SendCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child:
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                            SizedBox(height: 40.h),
                            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 34,
                  color: Colors.white,
                ),
                            ),
                            SizedBox(height: 40.h),
                            const Text(
                'Seems you lost \nyour key',
                style: TextStyle(
                  fontSize: 32,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w600,
                ),
                            ),
                            SizedBox(height: 30.h),
                            const Text(
                'Please input your verification code \nbelow to verify your account.',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w500,
                ),
                            ),
                            SizedBox(height: 140.h),
                            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: OtpInputFields(),
                            ),
                            SizedBox(height: 50.h),
                            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VarifyCode()));
                },
                child: Container(
                  height: 65.h,
                  width: 365.w,
                  decoration: BoxDecoration(
                    color: const Color(0xff0CBC8B),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      'Send code (05)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                            ),
                            SizedBox(height: 30.h),
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
                          ]),
              ),
        ));
  }
}
