import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/home/rates/widgets/bottom_appbar.dart';
import 'package:scrapo/view/home/rates/widgets/custom_floating.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

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
            const Center(
              child: Column(
                children: [
                  Text(
                    'Services',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Rewind - Services',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.h),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 50),
               child: Column(
                children: [
                 Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.square_outlined,
                          color: Colors.white,
                          ),
                           SizedBox(width: 5.w),
                    const Text(
                      'Bottle',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                      ],
                    ),
                    SizedBox(width: 80.w),
                    Row(
                      children: [
                      const Icon(
                      Icons.square_outlined,
                      color: Colors.white,
                      ),
                      SizedBox(width: 5.w),
                    const Text(
                      'Plastic Bottle',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      ), 
                      ],
                    )
                  ],
                 ),
                 SizedBox(height: 10.h),
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.square_outlined,
                            color: Colors.white,
                            ),
                             SizedBox(width: 5.w),
                      const Text(
                        'Brass',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        ],
                      ),
                      SizedBox(width: 80.w),
                      Row(
                        children: [
                        const Icon(
                        Icons.square_outlined,
                        color: Colors.white,
                        ),
                      SizedBox(width: 5.w),
                      const Text(
                        'Cans',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ), 
                        ],
                      )
                    ],
                   ),
                   SizedBox(height: 10.h), 
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.square_outlined,
                            color: Colors.white,
                            ),
                             SizedBox(width: 5.w),
                      const Text(
                        'Iron',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        ],
                      ),
                      SizedBox(width: 95.w),
                      Row(
                        children: [
                        const Icon(
                        Icons.square_outlined,
                        color: Colors.white,
                        ),
                      SizedBox(width: 5.w),
                      const Text(
                        'Steel',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ), 
                        ],
                      )
                    ],
                   ),
                   SizedBox(height: 10.h), 
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.square_outlined,
                            color: Colors.white,
                            ),
                             SizedBox(width: 5.w),
                      const Text(
                        'Copper',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        ],
                      ),
                      SizedBox(width: 70.w),
                      Row(
                        children: [
                        const Icon(
                        Icons.square_outlined,
                        color: Colors.white,
                        ),
                      SizedBox(width: 5.w),
                      const Text(
                        'Battries',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ), 
                        ],
                      )
                    ],
                   ),
                    SizedBox(height: 10.h),
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.square_outlined,
                            color: Colors.white,
                            ),
                             SizedBox(width: 5.w),
                      const Text(
                        'Heater',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        ],
                      ),
                      SizedBox(width: 75.w),
                      Row(
                        children: [
                        const Icon(
                        Icons.square_outlined,
                        color: Colors.white,
                        ),
                      SizedBox(width: 5.w),
                      const Text(
                        'Fans',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ), 
                        ],
                      )
                    ],
                   ),
                   SizedBox(height: 10.h), 
                    Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.square_outlined,
                            color: Colors.white,
                            ),
                             SizedBox(width: 5.w),
                      const Text(
                        'Inverter',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        ],
                      ),
                      SizedBox(width: 70.w),
                      Row(
                        children: [
                        const Icon(
                        Icons.square_outlined,
                        color: Colors.white,
                        ),
                      SizedBox(width: 5.w),
                      const Text(
                        'Microvawe',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ), 
                        ],
                      )
                    ],
                   ),
                 SizedBox(height: 10.h), 
                    Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.square_outlined,
                            color: Colors.white,
                            ),
                             SizedBox(width: 5.w),
                      const Text(
                        'NewsPaper',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        ],
                      ),
                      SizedBox(width: 40.w),
                      Row(
                        children: [
                        const Icon(
                        Icons.square_outlined,
                        color: Colors.white,
                        ),
                      SizedBox(width: 5.w),
                      const Text(
                        'CardBoard',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ), 
                        ],
                      )
                    ],
                   ),
                   SizedBox(height: 10.h), 
                    Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.square_outlined,
                            color: Colors.white,
                            ),
                             SizedBox(width: 5.w),
                      const Text(
                        'Tv',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        ],
                      ),
                      SizedBox(width: 110.w),
                      Row(
                        children: [
                        const Icon(
                        Icons.square_outlined,
                        color: Colors.white,
                        ),
                      SizedBox(width: 5.w),
                      const Text(
                        'CPU',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ), 
                        ],
                      )
                    ],
                   ),
                   SizedBox(height: 10.h), 
                    Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.square_outlined,
                            color: Colors.white,
                            ),
                             SizedBox(width: 5.w),
                      const Text(
                        'PROJECTOR',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        ],
                      ),
                      SizedBox(width: 30.w),
                      Row(
                        children: [
                        const Icon(
                        Icons.square_outlined,
                        color: Colors.white,
                        ),
                      SizedBox(width: 5.w),
                      const Text(
                        'LAPTOP',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ), 
                        ],
                      )
                    ],
                   ),
                   SizedBox(height: 10.h), 
                    Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.square_outlined,
                            color: Colors.white,
                            ),
                             SizedBox(width: 5.w),
                      const Text(
                        'Cycle',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        ],
                      ),
                      SizedBox(width: 85.w),
                      Row(
                        children: [
                        const Icon(
                        Icons.square_outlined,
                        color: Colors.white,
                        ),
                      SizedBox(width: 5.w),
                      const Text(
                        'Cooler',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ), 
                        ],
                      ),     
                    ],
                   ),
                   SizedBox(height: 10.h), 
                    Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.square_outlined,
                            color: Colors.white,
                            ),
                             SizedBox(width: 5.w),
                      const Text(
                        'MOTOR',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        ],
                      ),
                      SizedBox(width: 70.w),
                      Row(
                        children: [
                        const Icon(
                        Icons.square_outlined,
                        color: Colors.white,
                        ),
                      SizedBox(width: 5.w),
                      const Text(
                        'UPS',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ), 
                        ],
                      )
                    ],
                   ),
                   SizedBox(height: 10.h), 
                    Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.square_outlined,
                            color: Colors.white,
                            ),
                             SizedBox(width: 5.w),
                      const Text(
                        'Fridge',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        ],
                      ),
                      SizedBox(width: 80.w),
                      Row(
                        children: [
                        const Icon(
                        Icons.square_outlined,
                        color: Colors.white,
                        ),
                      SizedBox(width: 5.w),
                      const Text(
                        'AC',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ), 
                        ],
                      )
                    ],
                   ),
                   SizedBox(height: 10.h), 
                    Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.square_outlined,
                            color: Colors.white,
                            ),
                             SizedBox(width: 5.w),
                      const Text(
                        'CAR',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        ],
                      ),
                      SizedBox(width: 95.w),
                      Row(
                        children: [
                        const Icon(
                        Icons.square_outlined,
                        color: Colors.white,
                        ),
                      SizedBox(width: 5.w),
                      const Text(
                        'BIKE',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        ), 
                        ],
                      )
                    ],
                   ),
                ],
                           ),
             )
          ]),
        ));
  }
}
