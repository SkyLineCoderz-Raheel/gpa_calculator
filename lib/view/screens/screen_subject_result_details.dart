import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../helpers/helper.dart';
import '../../helpers/theme.dart';
import '../../widgets/widget_app_bar.dart';
import '../layouts/item_drawer_header.dart';

class ScreenSubjectResultDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Themes.setColor(context)?Colors.black:Colors.white,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 8.h,
          backgroundColor: appColor,
          actions: [
            WidgetAppBar(),
          ],
        ),
        drawer: Drawer(
          child: ItemDrawerHeader(),
        ),
        body: Container(
          color:Themes.setColor(context)?Colors.black: Colors.white,
          child: Container(
            width: Get.width,
            decoration:
                BoxDecoration( color:Themes.setColor(context)?Colors.black: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 3.w,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.h),
                      child: Text(
                        "Detailed Result:",
                        style: TextStyle(fontFamily: "sofia_pro", fontSize: 15.sp, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Progress",
                          style: TextStyle(
                            fontFamily: "sofia_pro",
                            fontSize: 15.sp,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Grade",
                              style: TextStyle(fontFamily: "sofia_pro", fontSize: 12.sp, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              "GPA",
                              style: TextStyle(fontFamily: "sofia_pro", fontSize: 12.sp, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1.h),
                      child: LinearPercentIndicator(
                        width: 70.w,
                        animation: true,
                        animationDuration: 1000,
                        lineHeight: 4.h,
                        trailing: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal:4.sp),
                              child: Text(
                                "A+",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp, fontFamily: "Nexa"),
                              ),
                            ),
                             SizedBox(width: 7.w,),
                            Text(
                              "2.0",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp, fontFamily: "Nexa"),
                            ),
                          ],
                        ),
                        percent: 0.8,
                        center: Text(
                          "80.0%",
                          style: TextStyle(color: Colors.white),
                        ),
                        progressColor: Color(0xff03045E),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1.h),
                      child: LinearPercentIndicator(
                        width: 70.w,
                        animation: true,
                        animationDuration: 1000,
                        lineHeight: 4.h,
                        trailing:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal:4.sp),
                              child: Text(
                                "A+",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp, fontFamily: "Nexa"),
                              ),
                            ),
                            SizedBox(width: 7.w,),
                            Text(
                              "2.0",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp, fontFamily: "Nexa"),
                            ),
                          ],
                        ),
                        percent: 0.8,
                        center: Text(
                          "80.0%",
                          style: TextStyle(color: Colors.white),
                        ),
                        progressColor: Color(0xff03045E),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1.h),
                      child: LinearPercentIndicator(
                        width: 70.w,
                        animation: true,
                        animationDuration: 1000,
                        lineHeight: 4.h,
                        trailing: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal:4.sp),
                              child: Text(
                                "A+",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp, fontFamily: "Nexa"),
                              ),
                            ),
                            SizedBox(width: 7.w,),
                            Text(
                              "2.0",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp, fontFamily: "Nexa"),
                            ),
                          ],
                        ),
                        percent: 0.8,
                        center: Text(
                          "80.0%",
                          style: TextStyle(color: Colors.white),
                        ),
                        progressColor: Color(0xff03045E),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.h),
                      child: Text(
                        "OverAll Result:",
                        style: TextStyle(fontFamily: "sofia_pro", fontSize: 15.sp, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1.h),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal:4.sp),
                            child: Text(
                              "Progress",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp, fontFamily: "Nexa"),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal:4.sp),
                                child: Text(
                                  "Grade",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp, fontFamily: "Nexa"),
                                ),
                              ),
                              SizedBox(width: 7.w,),
                              Text(
                                "GPA",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp, fontFamily: "Nexa"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1.h),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal:4.sp),
                            child: Text(
                              "70%",
                              style: TextStyle(fontSize: 12.sp, fontFamily: "Nexa"),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 2.w),
                            child: Row(
                              children: [
                                Text(
                                  "C",
                                  style: TextStyle(fontSize: 12.sp, fontFamily: "Nexa"),
                                ),
                                SizedBox(width: 10.w,),
                                Text(
                                  "2.53",
                                  style: TextStyle(fontSize: 12.sp, fontFamily: "Nexa"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 4.h),
                      alignment: Alignment.center,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          "Share",
                          style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        style: OutlinedButton.styleFrom(
                            fixedSize: Size(80.w, 7.h),
                            side: BorderSide(width: 1.5, color: Colors.white),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            primary: Colors.black,
                            backgroundColor: appColor
                            //  padding: const EdgeInsets.all(25)),
                            ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          "Download image",
                          style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        style: OutlinedButton.styleFrom(
                            fixedSize: Size(80.w, 7.h),
                            side: BorderSide(width: 1.5, color: Colors.white),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            primary: Colors.black,
                            backgroundColor: appColor
                            //  padding: const EdgeInsets.all(25)),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
