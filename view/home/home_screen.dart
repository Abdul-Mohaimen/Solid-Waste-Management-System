import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/community/community.dart';
import 'package:scrapo/view/home/pickup/pickup.dart';
import 'package:scrapo/view/home/rates/rates.dart';
import 'package:scrapo/view/home/services/services.dart';
import 'package:scrapo/view/home/widgets/about_us.dart';
import 'package:scrapo/view/home/widgets/drawer.dart';
import 'package:scrapo/view/home/widgets/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 36.0,
        ),
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: BottomAppBar(
        height: 80.h,
        notchMargin: 6.0,
        shape: const CircularNotchedRectangle(),
        color: Colors.black,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                },
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.home_filled,
                      color: Color(0xff0BAB7F),
                      ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Color(0xff0BAB7F),
                      ),
                      ) , 
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  const RatesScreen()));
                },
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.attach_money_rounded,
                       color: Color(0xff0BAB7F),
                      ),
                    Text(
                      'Rates',
                      style: TextStyle(
                        color: Color(0xff0BAB7F),
                      ),
                      ) , 
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 15.0,),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PickUpScreen()));
                },
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.fire_truck,
                       color: Color(0xff0BAB7F),
                      ),
                    Text(
                      'Pickup',
                      style: TextStyle(
                         color: Color(0xff0BAB7F),
                      ),
                      ) , 
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 5.0,),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ServicesScreen()));
                },
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.production_quantity_limits,
                      color: Color(0xff0BAB7F),
                      ),
                    Text(
                      'Services',
                      style: TextStyle(
                         color: Color(0xff0BAB7F),
                      ),
                      ) , 
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor:const Color(0xff0BAB7F),
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Icon(Icons.storefront_outlined),
        ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff58BC6B),
                Color(0xff0CBC8B),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 5.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        size: 36,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10.w),
                      const Expanded(
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Community()));
                },
                child: Container(
                  height: 60.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                    color: const Color(0xff000000),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      'Apply For Community',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      'Why Us',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                      ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              const AboutUs(),
              SizedBox(height: 5.h,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      'Services For',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                      ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              const Services(),
            ],
          ),
        ),
      ),
    );
  }
}
