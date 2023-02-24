import 'package:custom_utils/custom_utils.dart';
import 'package:easy_gpa_calculator/view/screens/screen_subject_result_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../helpers/helper.dart';
import '../../helpers/theme.dart';
import '../../model/model.dart';
import '../../widgets/first_home.dart';
import '../../widgets/widget_app_bar.dart';
import '../../widgets/widget_appbar_university.dart';
import '../layouts/item_chart.dart';
import '../layouts/item_drawer_header.dart';
import '../layouts/item_grade.dart';
import '../layouts/item_university.dart';

class ScreenCalculateResult extends StatefulWidget {
  const ScreenCalculateResult({Key? key}) : super(key: key);

  @override
  State<ScreenCalculateResult> createState() => _ScreenCalculateResultState();
}

class _ScreenCalculateResultState extends State<ScreenCalculateResult> {

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
          color:Themes.setColor(context)?Colors.black: Colors.white,
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
                    Padding(
                      padding:  EdgeInsets.only(top: 4.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Results Details:",
                            style: TextStyle(fontFamily: "sofia_pro", fontSize: 15.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "January 2021",
                            style: TextStyle(color:Colors.grey, fontFamily: "Nexa", fontSize: 12.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 8.sp),
                      child: Text(
                        "Your calculated GPA of 3 subjects",
                        style: TextStyle(fontFamily: "sofia_pro", fontSize: 14.sp,),
                      ),
                    ),
                    OverfilledRadialBar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Passed Semester",style: TextStyle(fontSize: 12.sp,fontFamily: "sofia_pro"),),
                        Text("03",style: TextStyle(fontSize: 12.sp,fontFamily: "sofia_pro"),),
                      ],
                    ),
                    OverfilledRadialBar(),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 4.h),
                      alignment: Alignment.center,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(ScreenSubjectResultDetails());
                        },
                        child: const Text("Get Subject Details",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
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
        )
    );
  }
}

