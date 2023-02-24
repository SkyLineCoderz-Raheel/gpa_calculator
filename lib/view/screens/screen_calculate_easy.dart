import 'package:custom_utils/custom_utils.dart';
import 'package:easy_gpa_calculator/view/screens/screen_calucuate_gpa.dart';
import 'package:easy_gpa_calculator/view/screens/screen_calucute_gpa_grade.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../helpers/helper.dart';
import '../../helpers/theme.dart';
import '../../widgets/first_home.dart';
import '../../widgets/widget_app_bar.dart';
import '../layouts/item_drawer_header.dart';

class ScreenCalculateEasy extends StatefulWidget {
  @override
  State<ScreenCalculateEasy> createState() => _ScreenCalculateEasyState();
}

class _ScreenCalculateEasyState extends State<ScreenCalculateEasy> {
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
            children: [ItemDrawerHeader()],
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
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                              child: Text(
                                "Name",
                                style: TextStyle( fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                              )),
                          Container(
                            width: Get.width,
                            margin: EdgeInsets.symmetric(horizontal: 3.w),
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder:
                                      OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(width: 1, color:Themes.setColor(context)?Colors.white:appColor)),
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
                                  hintText: "Farooq Abbas",
                                  hintStyle: TextStyle(color:Themes.setColor(context)?Colors.white: appColor),
                                  // contentPadding: EdgeInsets.only(left: 12,bottom: 5),
                                  fillColor: Themes.setColor(context)?Colors.black:Colors.white),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                              child: Text(
                                "Total Subject",
                                style: TextStyle(fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                              )),
                          Container(
                            alignment: Alignment.center,
                            width: Get.width,
                            height: 8.h,
                            margin: EdgeInsets.symmetric(horizontal: 3.w),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            //EdgeInsets.symmetric(horizontal:Get.width>740?3.sp:5.sp,vertical:Get.width>740?3.sp:8.sp),
                            decoration: BoxDecoration(
                                color: Themes.setColor(context)?Colors.black:Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color:Themes.setColor(context)?Colors.white:appColor),
                                boxShadow: [
                                  BoxShadow(blurRadius: 5.sp, color: Colors.white38),
                                ]),
                            child: DropdownButton(
                              hint: Text(
                                "Select Subject...",
                                style: TextStyle(
                                  color:Themes.setColor(context)?Colors.white:appColor,
                                ),
                              ),
                              isExpanded: true,
                              icon: SvgPicture.asset("assets/images/drop_down.svg",color: Themes.setColor(context)?Colors.white:appColor,),
                              underline: SizedBox(),
                              value: selectsubject,
                              isDense: true,
                              onChanged: (newValue) {
                                setState(() {
                                  selectsubject = newValue;
                                });
                              },
                              items: subjectList.map((valueitem) {
                                return DropdownMenuItem(
                                    value: valueitem,
                                    child: Text(
                                      valueitem,
                                      style: TextStyle(color: appColor),
                                    ));
                              }).toList(),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                              child: Text(
                                "Calculate By :",
                                style: TextStyle( fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                              )),
                          Container(
                            alignment: Alignment.center,
                            width: Get.width,
                            height: 8.h,
                            margin: EdgeInsets.symmetric(horizontal: 3.w),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            //EdgeInsets.symmetric(horizontal:Get.width>740?3.sp:5.sp,vertical:Get.width>740?3.sp:8.sp),
                            decoration: BoxDecoration(
                                color:Themes.setColor(context)?Colors.black:Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color:Themes.setColor(context)?Colors.white: appColor),
                                boxShadow: [
                                  BoxShadow(blurRadius: 5.sp, color: Colors.white38),
                                ]),
                            child: DropdownButton(
                              hint: Text(
                                "Grade...",
                                style: TextStyle(
                                  color:Themes.setColor(context)?Colors.white: appColor,
                                ),
                              ),
                              isExpanded: true,
                              icon: SvgPicture.asset("assets/images/drop_down.svg",color: Themes.setColor(context)?Colors.white:appColor,),
                              underline: SizedBox(),
                              value: choosecategorie,
                              isDense: true,
                              onChanged: (newValue) {
                                setState(() {
                                  choosecategorie = newValue;
                                });
                              },
                              items: choosecategory.map((valueitem) {
                                return DropdownMenuItem(
                                    value: valueitem,
                                    child: Text(
                                      valueitem,
                                      style: TextStyle(color:Themes.setColor(context)?Colors.white: appColor),
                                    ));
                              }).toList(),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 4.h),
                            alignment: Alignment.center,
                            child: OutlinedButton(
                              onPressed: () {
                                if (choosecategorie == "marks") {
                                  Get.to(ScreenCalucuateGpa());
                                  return;
                                }
                                Get.to(ScreenCalucuteGpaGrade());
                              },
                              child: const Text(
                                "Submit Details",
                                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                              ),
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
        ));
  }

  final List subjectList = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  final List choosecategory = ['grade', 'marks'];

  var choosecategorie;
  var selectsubject;
}

// Container(
//                     height: Get.height,
//                     decoration: BoxDecoration(
//                         color: Colors.green, borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
//                     child: Container(
//                       margin: EdgeInsets.symmetric(
//                         horizontal: 3.w,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                               alignment: Alignment.center,
//                               margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
//                               child: Text(
//                                 "Calculate your Semester GPA ",
//                                 style: TextStyle(color: Color(0xff707070), fontFamily: "Nexa", fontSize: 18.sp, fontWeight: FontWeight.w400),
//                               )),
//                           Container(
//                               margin: EdgeInsets.symmetric(vertical: 2.h,horizontal: 4.w),
//                               child: Text(
//                                 "Name",
//                                 style: TextStyle(color: , fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
//                               )),
//                           Container(
//                             margin: EdgeInsets.symmetric(horizontal: 3.w),
//                             child: TextField(
//                               decoration: InputDecoration(
//                                   enabledBorder:OutlineInputBorder(
//
//                                       borderRadius: BorderRadius.circular(10),borderSide: BorderSide(width: 1,color: appColor)),
//                                   focusedBorder: OutlineInputBorder(),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(4.0),
//                                     borderSide: const BorderSide(
//                                       width: 0,
//                                       style: BorderStyle.none,
//                                     ),
//                                   ),
//                                   filled: true,
//                                   hintMaxLines: 2,
//                                   hintText: "Farooq Abbas",
//                                   // contentPadding: EdgeInsets.only(left: 12,bottom: 5),
//                                   fillColor: Colors.white),
//                             ),
//                           ),
//
//                           Container(
//                               margin: EdgeInsets.symmetric(vertical: 2.h,horizontal: 4.w),
//                               child: Text(
//                                 "Total Subject",
//                                 style: TextStyle(color: , fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
//                               )),
//                           Container(
//                             height: 7.h,
//                             width: 80.w,
//                             alignment: Alignment.centerLeft,
//                             padding: EdgeInsets.symmetric(horizontal: 3.h,),
//                             margin: EdgeInsets.symmetric(horizontal: 3.w),
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               border: Border.all(color: appColor,width: 1),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Text("Farooq Abbas",style: TextStyle(color: Color(0xff7D7D7D),fontFamily: "sofia_pro",fontSize: 14.sp),),
//                           ),
//                           Container(
//                               margin: EdgeInsets.symmetric(vertical: 2.h,horizontal: 4.w),
//                               child: Text(
//                                 "Calculate By :",
//                                 style: TextStyle(color: , fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
//                               )),
//
//                           Container(
//                             height: 7.h,
//                             width: 80.w,
//                             alignment: Alignment.centerLeft,
//                             padding: EdgeInsets.symmetric(horizontal: 3.h,),
//                             margin: EdgeInsets.symmetric(horizontal: 3.w),
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               border: Border.all(color: appColor,width: 1),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Text("Farooq Abbas",style: TextStyle(color: Color(0xff7D7D7D),fontFamily: "sofia_pro",fontSize: 14.sp),),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
