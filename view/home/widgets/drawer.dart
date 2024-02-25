import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/community/home_community/h_community.dart';
import 'package:scrapo/view/home/pickup/pickup.dart';
import 'package:scrapo/view/home/rates/rates.dart';
import 'package:scrapo/view/home/services/services.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Center(
              child: Column(
                children: [
                  const Text(
                    'Scrapo',
                    style: TextStyle(
                      fontSize: 32,
                      color: Color(0xff0BAB7F),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'RECYCLING ONLINE',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff0BAB7F),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  CircleAvatar(
                    child: Image.asset(
                      'assets/Ellipse 212.png',
                      ),
                  ),
                  SizedBox(height: 2.h),
                  const Text(
                    'Abdul Mohaimen',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListTile(
              leading: const Icon(
                Icons.rate_review_sharp,
                color: Colors.black,
                ),
              title: const Text('Scarp Rates'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RatesScreen()));              },
            ),
          ),
         Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListTile(
              leading: const Icon(
                Icons.fire_truck_sharp,
                color: Colors.black,
                ),
              title: const Text('Pickup'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PickUpScreen()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListTile(
              leading: const Icon(
                Icons.design_services_sharp,
                color: Colors.black,
                ),
              title: const Text('Services'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ServicesScreen()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListTile(
              leading: const Icon(
                Icons.person_add,
                color: Colors.black,
                ),
              title: const Text('Community'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const CommunityHome())));
              },
            ),
          ),
          SizedBox(height: 300.h),
          const Divider(),
           ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
                ),
              title: const Text('Settings'),
              onTap: () {
                
              },
            ), 
        ],
      ),
    );
  }
}
