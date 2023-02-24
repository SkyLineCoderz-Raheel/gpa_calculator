import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../helpers/theme.dart';
import '../layouts/item_notification.dart';

class ScreenNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.setColor(context)?Colors.black: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor:Themes.setColor(context)?Colors.black: Colors.white,
        title: Text(
          "Notifications",
          style: TextStyle( color:Themes.setColor(context)?Colors.white: Colors.black, fontFamily: "Nexa", fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.sp),
            child: SvgPicture.asset(
              "assets/images/filter.svg",
              color:Themes.setColor(context)?Colors.white: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.h),
              child: Text(
                "Mar 01/2023",
                style: TextStyle(color:Themes.setColor(context)?Colors.white: Colors.black, fontWeight: FontWeight.bold, fontSize: 12.sp),
              ),
            ),
            ListView.builder(
              physics: PageScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ItemNotification();
              },
            ),
          ],
        ),
      ),
    );
  }
}
