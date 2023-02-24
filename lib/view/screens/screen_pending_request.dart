import 'package:easy_gpa_calculator/view/screens/screen_request_portal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/helper.dart';
import '../../helpers/theme.dart';
import '../../widgets/widget_appbar_university.dart';
import '../layouts/item_drawer_header.dart';
import '../layouts/item_university.dart';
import '../layouts/item_university_pending.dart';

class ScreenPendingRequest extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 8.h,
          backgroundColor: appColor,
          actions: [
            WidgetAppbarUniversity(),

          ],
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              ItemDrawerHeader()

            ],
          ),
        ),
        body: Container(
          color: appColor,
          child: Container(
            width: Get.width,
            decoration: BoxDecoration(
                color:Themes.setColor(context)?Colors.black:Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 3.w,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Padding(
                     padding:  EdgeInsets.symmetric(vertical: 4.sp),
                     child: Center(
                       child:Text(
                         "Pending Unversities Portals",
                         style: TextStyle(color:Themes.setColor(context)?Colors.white:Color(0xff707070), fontFamily: "Nexa", fontSize: 12.sp, fontWeight: FontWeight.w400),
                       ),
                     ),
                   ),
                    GestureDetector(
                      onTap: (){
                      },
                      child: ListView.builder(
                        physics:ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemUniversityPending();
                        },),
                    ),

                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
