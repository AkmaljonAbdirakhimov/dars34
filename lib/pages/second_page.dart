import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Second Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              height: 300,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.green,
                  ),
                  Positioned(
                    left: 150.w - 25,
                    top: -50,
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/en/8/86/Avatar_Aang.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 600,
              child: Stack(
                children: [
                  Positioned(
                    left: 30,
                    top: 30,
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.green,
                    ),
                  ),
                  Positioned(
                    left: 60,
                    top: 60,
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.red,
                    ),
                  ),
                  Positioned(
                    left: 90,
                    top: 90,
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 600,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(-0.7, -0.8),
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.green,
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.35, -0.6),
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.red,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, -0.4),
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1000,
            ),
          ],
        ),
      ),
    );
  }
}
