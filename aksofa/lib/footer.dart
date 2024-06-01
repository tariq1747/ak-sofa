import 'package:aksofa/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 103, 176, 131),
        width: Helper.screenW(context),
        padding: EdgeInsets.all(10.sp),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ak Sofa',
              style: TextStyle(
                color: Colors.white,
                fontSize: Helper.isMobile(context) ? 20 : 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            ConstrainedBox(
              constraints:
                  BoxConstraints(maxWidth: Helper.screenW(context) * 0.3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Helper.isMobile(context) ? 16 : 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.sp,
                  ),
                  const DetailsRow(
                    icon: Icons.phone,
                    text: '+91 8978310726',
                  ),
                  SizedBox(
                    height: 2.sp,
                  ),
                  const DetailsRow(
                    icon: Icons.mail,
                    text: 'aksofa@gmail.com',
                  ),
                  SizedBox(
                    height: 2.sp,
                  ),
                  const DetailsRow(
                    icon: Icons.location_city,
                    text: 'Hyderabad, Telangana',
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20.sp,
            ),
            ConstrainedBox(
              constraints:
                  BoxConstraints(maxWidth: Helper.screenW(context) * 0.4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Helper.isMobile(context) ? 16 : 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.sp,
                  ),
                  Text(
                    'AK Sofa is a premier destination for all your sofa needs, located in the heart of Hyderabad near the iconic Charminar. Our business specializes in the manufacturing and repair of a wide range of sofas, catering to diverse tastes and preferences. Whether you’re looking for a stylish sectional, a comfortable recliner, or a sleek modern loveseat, AK Sofa has something for everyone.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Helper.isMobile(context) ? 10 : 16,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 12,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class DetailsRow extends StatelessWidget {
  const DetailsRow({super.key, this.icon, required this.text});
  final IconData? icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 10,
          color: Colors.white,
        ),
        SizedBox(
          width: 2.sp,
        ),
        Text(
          text,
          maxLines: 2,
          style: TextStyle(
            color: Colors.white,
            fontSize: Helper.isMobile(context) ? 10 : 16,
          ),
        ),
      ],
    );
  }
}
