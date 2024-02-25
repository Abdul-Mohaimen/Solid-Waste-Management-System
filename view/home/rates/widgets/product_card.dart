import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrapo/view/home/rates/widgets/product_data.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              product.imageUrl,
              height: 60.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 5.h),
            Text(
              product.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
             Text(
              product.price,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.green,
              ),
              ),
          ],
        ),
      ),
    );
  }
}