import 'package:aksofa/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer(
      {super.key,
      required this.discription,
      required this.image,
      this.right = false,
      required this.isMobile});
  final String discription;
  final String image;
  final bool right;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.sp),
      child: isMobile
          ? Padding(
              padding: EdgeInsets.only(top: 25.sp),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.sp),
                    child: Image.asset(
                      image,
                      height: 150.sp,
                      width: Helper.screenW(context),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    discription,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: right
                  ? [
                      SizedBox(
                        width: Helper.screenW(context) * 0.4,
                        child: Text(
                          discription,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.sp),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.sp),
                        child: Image.asset(
                          image,
                          height: 88.sp,
                          fit: BoxFit.cover,
                          width: Helper.screenW(context) * 0.5,
                        ),
                      ),
                    ]
                  : [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.sp),
                        child: Image.asset(
                          image,
                          height: 88.sp,
                          fit: BoxFit.cover,
                          width: Helper.screenW(context) * 0.5,
                        ),
                      ),
                      SizedBox(width: 10.sp),
                      SizedBox(
                        width: Helper.screenW(context) * 0.4,
                        child: Text(
                          discription,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
            ),
    );
  }
}
