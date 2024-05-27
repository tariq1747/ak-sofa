import 'package:aksofa/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        width: Helper.screenW(context),
        padding: EdgeInsets.all(10.sp),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ak Sofa',
              style: TextStyle(
                color: Colors.white,
                fontSize: 8.sp,
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
                      fontSize: 6.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.sp,
                  ),
                  ListTile(
                    horizontalTitleGap: 2.sp,
                    contentPadding: const EdgeInsets.all(0),
                    leading: Icon(
                      Icons.phone,
                      size: 8.sp,
                    ),
                    title: Text(
                      '+91 888889988898',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 6.sp,
                      ),
                    ),
                  ),
                  ListTile(
                    horizontalTitleGap: 2.sp,
                    contentPadding: const EdgeInsets.all(0),
                    leading: Icon(
                      Icons.mail,
                      size: 8.sp,
                    ),
                    title: Text(
                      'fjasdhkja@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 6.sp,
                      ),
                    ),
                  ),
                  ListTile(
                    horizontalTitleGap: 2.sp,
                    contentPadding: const EdgeInsets.all(0),
                    leading: Icon(
                      Icons.home,
                      size: 8.sp,
                    ),
                    title: Text(
                      'hhydrabad',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 6.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.sp,
            ),
            ConstrainedBox(
              constraints:
                  BoxConstraints(maxWidth: Helper.screenW(context) * 0.3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 6.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.sp,
                  ),
                  Text(
                    'shfdgjhdfdsgfhshghdjhdsfhfjsjfdshfhsdkjfjdshfsdhfjhdsfjwhefhjewhfewhfjhewjfhjewhfhewjfhjewfwejhfjwhefjewwwwwwhkjewfjwejfhjwefjhwekjfkjwfeewfhewjfwwjwkujduehfhhiwhnfjwnjehfnjwhefwj',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 6.sp,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
