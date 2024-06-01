import 'package:aksofa/body.dart';
import 'package:aksofa/footer.dart';
import 'package:aksofa/header.dart';
import 'package:aksofa/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3EB489),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              Image.asset(
                'assets/sofa.png',
                width: Helper.screenW(context),
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.sp,
              ),
              BodyContainer(
                discription: 'High-density foam cushions for maximum comfort',
                image: 'assets/sofa1.png',
                isMobile: Helper.isMobile(context),
              ),
              SizedBox(
                height: 5.sp,
              ),
              BodyContainer(
                discription: 'Durable, easy-to-clean upholstery',
                image: 'assets/sofa2.png',
                right: true,
                isMobile: Helper.isMobile(context),
              ),
              SizedBox(
                height: 5.sp,
              ),
              BodyContainer(
                discription: 'Sturdy hardwood frame for long-lasting support',
                image: 'assets/sofa5.png',
                isMobile: Helper.isMobile(context),
              ),
              SizedBox(
                height: 5.sp,
              ),
              BodyContainer(
                discription: 'Available in various colors and fabrics',
                image: 'assets/sofa6.png',
                right: true,
                isMobile: Helper.isMobile(context),
              ),
              SizedBox(
                height: 5.sp,
              ),
              BodyContainer(
                discription:
                    'Spacious seating area accommodates guests comfortably',
                image: 'assets/sofa3.png',
                isMobile: Helper.isMobile(context),
              ),
              SizedBox(
                height: 5.sp,
              ),
              BodyContainer(
                discription: 'Adjustable headrests for personalized comfort',
                image: 'assets/sofa4.png',
                right: true,
                isMobile: Helper.isMobile(context),
              ),
              SizedBox(
                height: 10.sp,
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
