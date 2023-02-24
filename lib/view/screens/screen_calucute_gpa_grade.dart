import 'package:easy_gpa_calculator/view/screens/screen_calculate_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/helper.dart';
import '../../helpers/theme.dart';
import '../../widgets/first_home.dart';
import '../../widgets/widget_app_bar.dart';
import '../layouts/item_drawer_header.dart';
import '../layouts/item_grade.dart';

class ScreenCalucuteGpaGrade extends StatelessWidget {
  const ScreenCalucuteGpaGrade({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 8.h,
          backgroundColor: appColor,
          actions: [
            WidgetAppBar(),

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
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: FirstHome(),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                      color:Themes.setColor(context)?Colors.black: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 3.w,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                              child: Text(
                                "Calculate your Semester GPA ",
                                style: TextStyle(color:Themes.setColor(context)?Colors.white: Color(0xff707070), fontFamily: "Nexa", fontSize: 18.sp, fontWeight: FontWeight.w400),
                              )),
                          ListView.builder(
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: 10,
                            itemBuilder: (BuildContext context, int index) {
                              return ItemGrade();
                            },),

                          Container(
                            margin: EdgeInsets.symmetric(vertical: 4.h),
                            alignment: Alignment.center,
                            child: OutlinedButton(
                              onPressed: () {
                                Get.to(ScreenCalculateResult());
                              },
                              child: const Text("Get Your GPA",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                              style: OutlinedButton.styleFrom(
                                  fixedSize: Size(80.w, 7.h),
                                  side: BorderSide(width: 1.5, color: Colors.white),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),


                                  ),

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
              )
            ],
          ),
        ),
    );
  }
}
