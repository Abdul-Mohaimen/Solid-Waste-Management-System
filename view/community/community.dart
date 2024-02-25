import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/community/campus_director/campus_director.dart';
import 'package:scrapo/view/community/community_auth/community_login.dart';
import 'package:scrapo/view/home/rates/widgets/bottom_appbar.dart';
import 'package:scrapo/view/home/rates/widgets/custom_floating.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.green,
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
            SizedBox(height: 20.h),
            Center(
              child: Column(
                children: [
                  Image.asset('assets/OBJECTS.png'),
                  SizedBox(height: 40.h),
                  const Text(
                    'Welcome To \n Scrapo Community',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                    ),
                  SizedBox(height: 60.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CommunityLogin()));
                    },
                    child: Container(
                      width: 180.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w400
                          ),
                          ),
                      ),
                    ),
                  ), 
                   SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CampusDirector()));
                    },
                    child: Container(
                      width: 300.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                          'Become a campus director',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w400
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