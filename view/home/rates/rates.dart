import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/home/rates/widgets/bottom_appbar.dart';
import 'package:scrapo/view/home/rates/widgets/custom_floating.dart';
import 'package:scrapo/view/home/rates/widgets/product_card.dart';
import 'package:scrapo/view/home/rates/widgets/product_data.dart';

class RatesScreen extends StatelessWidget {
  const RatesScreen({super.key});

  static List<Product> products = [
    Product(name: 'BOOKS', imageUrl: 'assets/books.jpeg', price: '60/Kg'),
    Product(name: 'PET BOTTLE', imageUrl: 'assets/bottle.webp', price: '50/Kg'),
    Product(name: 'BOOKS', imageUrl: 'assets/books.jpeg', price: '60/Kg'),
    Product(name: 'PET BOTTLE', imageUrl: 'assets/bottle.webp', price: '50/Kg'),
    Product(name: 'BOOKS', imageUrl: 'assets/books.jpeg', price: '60/Kg'),
    Product(name: 'PET BOTTLE', imageUrl: 'assets/bottle.webp', price: '50/Kg'),
    Product(name: 'BOOKS', imageUrl: 'assets/books.jpeg', price: '60/Kg'),
    Product(name: 'PET BOTTLE', imageUrl: 'assets/bottle.webp', price: '50/Kg'),
    Product(name: 'BOOKS', imageUrl: 'assets/books.jpeg', price: '60/Kg'),
    Product(name: 'PET BOTTLE', imageUrl: 'assets/bottle.webp', price: '50/Kg'),
    Product(name: 'BOOKS', imageUrl: 'assets/books.jpeg', price: '60/Kg'),
    Product(name: 'PET BOTTLE', imageUrl: 'assets/bottle.webp', price: '50/Kg'),
    Product(name: 'BOOKS', imageUrl: 'assets/books.jpeg', price: '60/Kg'),
    Product(name: 'PET BOTTLE', imageUrl: 'assets/bottle.webp', price: '50/Kg'),
    Product(name: 'BOOKS', imageUrl: 'assets/books.jpeg', price: '60/Kg'),
    Product(name: 'PET BOTTLE', imageUrl: 'assets/bottle.webp', price: '50/Kg'),
    Product(name: 'BOOKS', imageUrl: 'assets/books.jpeg', price: '60/Kg'),
    Product(name: 'PET BOTTLE', imageUrl: 'assets/bottle.webp', price: '50/Kg'),
    Product(name: 'BOOKS', imageUrl: 'assets/books.jpeg', price: '60/Kg'),
    Product(name: 'PET BOTTLE', imageUrl: 'assets/bottle.webp', price: '50/Kg'),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      bottomNavigationBar: const CustomBottomAppbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CustomFloating(),
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
          Center(
            child: Column(
              children: [
                const Text(
                  'Scrap Rates',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'Rewind - Scrap Rates',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  width: double.infinity,
                  height: 700.h,
                  color: Colors.amber[100],
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 6.0,
                      mainAxisSpacing: 2.0,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ProductCard(product: products[index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}


