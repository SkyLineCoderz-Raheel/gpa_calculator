import 'package:custom_utils/custom_utils.dart';
import 'package:easy_gpa_calculator/view/screens/screen_calculate_easy_cgpa_semester.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../helpers/helper.dart';
import '../../helpers/theme.dart';
import '../../widgets/first_home.dart';
import '../../widgets/widget_app_bar.dart';
import '../layouts/item_drawer_header.dart';

class ScreenCalculateEasyCgpa extends StatefulWidget {
  const ScreenCalculateEasyCgpa({Key? key}) : super(key: key);

  @override
  _ScreenCalculateEasyCgpaState createState() => _ScreenCalculateEasyCgpaState();
}

class _ScreenCalculateEasyCgpaState extends State<ScreenCalculateEasyCgpa> {
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
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                              child: Text(
                                "Name",
                                style: TextStyle(color:Themes.setColor(context)?Colors.white: Colors.black, fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                              )),
                          Container(
                            width: Get.width,
                            margin: EdgeInsets.symmetric(horizontal: 3.w),
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10), borderSide: BorderSide(width: 1, color:Themes.setColor(context)?Colors.white: appColor,)),
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
                                  hintStyle: TextStyle( color:Themes.setColor(context)?Colors.white: Colors.black,),
                                  // contentPadding: EdgeInsets.only(left: 12,bottom: 5),
                                  fillColor:Themes.setColor(context)?Colors.black: Colors.white,),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                              child: Text(
                                "Passed Semester :",
                                style: TextStyle( color:Themes.setColor(context)?Colors.white: Colors.black, fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                              )),
                          Container(
                            alignment: Alignment.center,
                            width: Get.width,
                            height: 8.h,
                            margin: EdgeInsets.symmetric(horizontal: 3.w),
                            padding:EdgeInsets.symmetric(horizontal: 10), //EdgeInsets.symmetric(horizontal:Get.width>740?3.sp:5.sp,vertical:Get.width>740?3.sp:8.sp),
                            decoration: BoxDecoration(
                                color:Themes.setColor(context)?Colors.black: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all( color:Themes.setColor(context)?Colors.white:appColor),
                                boxShadow: [
                                  BoxShadow(blurRadius: 5.sp,color: Colors.white38),
                                ]
                            ),
                            child:DropdownButton(
                              hint: Text("5 Semester...",style: TextStyle(color:Themes.setColor(context)?Colors.white: Colors.black,),),
                              isExpanded: true,
                              icon: SvgPicture.asset("assets/images/drop_down.svg", color:Themes.setColor(context)?Colors.white: appColor,),
                              underline: SizedBox(),
                              value:passedSemester,
                              isDense: true,
                              onChanged: (newValue){
                                setState(() {
                                  passedSemester= newValue;
                                });
                              },
                              items: semesterList.map((valueitem){
                                return DropdownMenuItem(
                                    value: valueitem,
                                    child:Text(valueitem,style: TextStyle(color:Themes.setColor(context)?Colors.white: Colors.black,),
                                    ) );
                              }).toList(),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8.h),
                            alignment: Alignment.center,
                            child: OutlinedButton(
                              onPressed: () {
                                Get.to(ScreenCalculateEasyCgpaSemester());

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
  final List semesterList = ['1','2','3','4','5','6','7','8','9','10'];
  var passedSemester;
}
