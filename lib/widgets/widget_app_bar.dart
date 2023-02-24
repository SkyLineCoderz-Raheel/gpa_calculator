import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/screens/screen_notification.dart';

class WidgetAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:8.sp ),
      child: Row(children: [
        GestureDetector(
          onTap: (){Get.to(ScreenNotification());},

          child: Padding(
            padding:  EdgeInsets.only(top: 8.0,right: 6.sp),
            child: Icon(Icons.notifications_none,color: Colors.white,),
          ),
        ),
        CircleAvatar(
          radius: 18.sp,
          backgroundImage: AssetImage("assets/images/profile.png"),

        )
      ],),
    );
  }
}
