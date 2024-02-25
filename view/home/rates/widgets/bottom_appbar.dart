import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/home/home_screen.dart';
import 'package:scrapo/view/home/pickup/pickup.dart';
import 'package:scrapo/view/home/rates/rates.dart';
import 'package:scrapo/view/home/services/services.dart';

class CustomBottomAppbar extends StatelessWidget {
  const CustomBottomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
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
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RatesScreen()));
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
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
            ),
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
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 5.0,
            ),
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
