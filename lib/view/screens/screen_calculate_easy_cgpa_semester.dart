import 'package:easy_gpa_calculator/view/screens/screen_result_c_gpa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/helper.dart';
import '../../helpers/theme.dart';
import '../../widgets/first_home.dart';
import '../../widgets/widget_app_bar.dart';
import '../layouts/item_drawer_header.dart';

class ScreenCalculateEasyCgpaSemester extends StatelessWidget {
  const ScreenCalculateEasyCgpaSemester({Key? key}) : super(key: key);

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
                              margin: EdgeInsets.symmetric(vertical: 2.h),
                              child: Text(
                                "Calculate your C-GPA ",
                                style: TextStyle(color: Color(0xff707070), fontFamily: "Nexa", fontSize: 16.sp, fontWeight: FontWeight.w400),
                              )),
                          // Container(
                          //     margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                          //     child: Text(
                          //       "Name",
                          //       style: TextStyle( color:Themes.setColor(context)?Colors.white: Colors.black, fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                          //     )),
                          // Container(
                          //   width: Get.width,
                          //   margin: EdgeInsets.symmetric(horizontal: 3.w),
                          //   child: TextField(
                          //     decoration: InputDecoration(
                          //         enabledBorder: OutlineInputBorder(
                          //             borderRadius: BorderRadius.circular(10), borderSide: BorderSide(width: 1,  color:Themes.setColor(context)?Colors.white:appColor,)),
                          //         focusedBorder: OutlineInputBorder(),
                          //         border: OutlineInputBorder(
                          //           borderRadius: BorderRadius.circular(4.0),
                          //           borderSide: const BorderSide(
                          //             width: 0,
                          //             style: BorderStyle.none,
                          //           ),
                          //         ),
                          //         filled: true,
                          //         hintMaxLines: 2,
                          //         hintText: "Farooq Abbas",
                          //         hintStyle: TextStyle( color:Themes.setColor(context)?Colors.white: Colors.black,),
                          //         // contentPadding: EdgeInsets.only(left: 12,bottom: 5),
                          //         fillColor: Themes.setColor(context)?Colors.black: Colors.white,),
                          //   ),
                          // ),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                              child: Text(
                                "Semester 1",
                                style: TextStyle( color:Themes.setColor(context)?Colors.white: Colors.black, fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                              )),
                          Container(
                            width: Get.width,
                            margin: EdgeInsets.symmetric(horizontal: 3.w),
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10), borderSide: BorderSide(width: 1,  color:Themes.setColor(context)?Colors.white: appColor)),
                                  focusedBorder: OutlineInputBorder(),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                    borderSide: const BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  filled: true,
                                  hintMaxLines: 2,
                                  hintText: "GPA",
                                  hintStyle: TextStyle( color:Themes.setColor(context)?Colors.white: Colors.black,),
                                  // contentPadding: EdgeInsets.only(left: 12,bottom: 5),
                                  fillColor: Themes.setColor(context)?Colors.black: Colors.white,),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                              child: Text(
                                "Semester 2",
                                style: TextStyle( color:Themes.setColor(context)?Colors.white: Colors.black, fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                              )),
                          Container(
                            width: Get.width,
                            margin: EdgeInsets.symmetric(horizontal: 3.w),
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10), borderSide: BorderSide(width: 1, color:Themes.setColor(context)?Colors.white:appColor,)),
                                  focusedBorder: OutlineInputBorder(),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                    borderSide: const BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  filled: true,
                                  hintMaxLines: 2,
                                  hintText: "GPA",
                                  hintStyle: TextStyle( color:Themes.setColor(context)?Colors.white: Colors.black,),
                                  // contentPadding: EdgeInsets.only(left: 12,bottom: 5),
                                  fillColor:Themes.setColor(context)?Colors.black: Colors.white,),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                              child: Text(
                                "Semester 3",
                                style: TextStyle( color:Themes.setColor(context)?Colors.white: Colors.black, fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                              )),
                          Container(
                            width: Get.width,
                            margin: EdgeInsets.symmetric(horizontal: 3.w),
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10), borderSide: BorderSide(width: 1, color:Themes.setColor(context)?Colors.white:appColor)),
                                  focusedBorder: OutlineInputBorder(),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                    borderSide: const BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  filled: true,
                                  hintMaxLines: 2,
                                  hintText: "GPA",
                                  hintStyle: TextStyle( color:Themes.setColor(context)?Colors.white: Colors.black,),
                                  // contentPadding: EdgeInsets.only(left: 12,bottom: 5),
                                  fillColor:Themes.setColor(context)?Colors.black: Colors.white,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8.h),
                            alignment: Alignment.center,
                            child: OutlinedButton(
                              onPressed: () {
                                Get.to(ScreenResultCGpa());

                              },
                              child: const Text("Submit Details",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
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
            ],
          ),
        )
    );
  }
}
