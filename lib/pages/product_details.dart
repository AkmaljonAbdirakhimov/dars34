import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProductDetails extends StatefulWidget {
  final String productTitle;
  final String productImage;
  final String productDescription;

  ProductDetails({
    required this.productTitle,
    required this.productImage,
    required this.productDescription,
  });

  State<ProductDetails> createState() {
    return _ProductDetailsState();
  }
}

class _ProductDetailsState extends State<ProductDetails> {
  int currentIndex = 0;

  List<Widget> infos = [
    const Text("Salom Men bir kishilik somsaman"),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Salom Men ikki kishilik somsaman"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star),
            Icon(Icons.star),
          ],
        )
      ],
    ),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Salom Men uch kishilik somsaman"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
          ],
        )
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.productTitle),
      ),
      body: Column(
        children: [
          Container(
            width: 360.w,
            height: 300,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(widget.productImage),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  widget.productDescription,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Gap(20),
          Text(
            widget.productTitle,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(20),
          Text(widget.productDescription),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  currentIndex = 0;
                  setState(() {});
                },
                child: const Text(
                  "1 kishilik",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () {
                  currentIndex = 1;
                  setState(() {});
                },
                child: const Text(
                  "2 kishilik",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () {
                  currentIndex = 2;
                  setState(() {});
                },
                child: const Text(
                  "3 kishilik",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 250,
            color: Colors.amber,
            alignment: Alignment.center,
            child: infos[currentIndex],
          ),
        ],
      ),
    );
  }
}
