import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../helpers/helper.dart';
import '../../helpers/theme.dart';
import '../../widgets/widget_appbar_university.dart';
import '../layouts/item_drawer_header.dart';

class ScreenUpdateSetting extends StatefulWidget {

  @override
  State<ScreenUpdateSetting> createState() => _ScreenUpdateSettingState();
}

class _ScreenUpdateSettingState extends State<ScreenUpdateSetting> {
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
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 3.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 4.sp),
                      child: Center(
                        child:Text(
                          "Set the Percentatge of Grades",
                          style: TextStyle(color:Themes.setColor(context)?Colors.white: Color(0xff707070), fontFamily: "Nexa", fontSize: 12.sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(height: 4.h,),
                    Row(
                      children: [
                        Text("A+Grade",style: TextStyle(color:Themes.setColor(context)?Colors.white: Colors.grey,fontFamily: "Nexa",fontWeight: FontWeight.bold),
                          ),
                        Container(
                          alignment: Alignment.center,
                          width: 70.w,
                          height: 8.h,
                          margin: EdgeInsets.symmetric(horizontal: 3.w),
                          padding:EdgeInsets.symmetric(horizontal: 10), //EdgeInsets.symmetric(horizontal:Get.width>740?3.sp:5.sp,vertical:Get.width>740?3.sp:8.sp),
                          decoration: BoxDecoration(
                              color: appColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(blurRadius: 5.sp,color: Colors.white38),
                              ]
                          ),
                          child:DropdownButton(
                            hint: Text("90%...",style: TextStyle(color: Colors.white,),),
                            isExpanded: true,
                            icon: SvgPicture.asset("assets/images/drop_down.svg",color: Colors.white,),
                            underline: SizedBox(),
                            value: APlus,
                            isDense: true,
                            onChanged: (newValue){
                              setState(() {
                                APlus = newValue;
                              });
                            },
                            items: APlusGradeList.map((valueitem){
                              return DropdownMenuItem(
                                  value: valueitem,
                                  child:Text(valueitem,style: TextStyle(color: Colors.black),
                                  ) );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.h,),

                    Row(
                      children: [
                        Text("A-Grade",style: TextStyle(color: Themes.setColor(context)?Colors.white:Colors.grey,fontFamily: "Nexa",fontWeight: FontWeight.bold),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 70.w,
                          height: 8.h,
                          margin: EdgeInsets.symmetric(horizontal: 3.w),
                          padding:EdgeInsets.symmetric(horizontal: 10), //EdgeInsets.symmetric(horizontal:Get.width>740?3.sp:5.sp,vertical:Get.width>740?3.sp:8.sp),
                          decoration: BoxDecoration(
                              color: appColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(blurRadius: 5.sp,color: Colors.white38),
                              ]
                          ),
                          child:DropdownButton(
                            hint: Text("80%...",style: TextStyle(color: Colors.white,),),
                            isExpanded: true,
                            icon: SvgPicture.asset("assets/images/drop_down.svg",color: Colors.white,),
                            underline: SizedBox(),
                            value: ANegative,
                            isDense: true,
                            onChanged: (newValue){
                              setState(() {
                                ANegative = newValue;
                              });
                            },
                            items: ANegativeGradeList.map((valueitem){
                              return DropdownMenuItem(
                                  value: valueitem,
                                  child:Text(valueitem,style: TextStyle(color: Colors.black),
                                  ) );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.h,),

                    Row(
                      children: [
                        Text("A Grade",style: TextStyle(color:Themes.setColor(context)?Colors.white: Colors.grey,fontFamily: "Nexa",fontWeight: FontWeight.bold),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 70.w,
                          height: 8.h,
                          margin: EdgeInsets.symmetric(horizontal: 3.w),
                          padding:EdgeInsets.symmetric(horizontal: 10), //EdgeInsets.symmetric(horizontal:Get.width>740?3.sp:5.sp,vertical:Get.width>740?3.sp:8.sp),
                          decoration: BoxDecoration(
                              color: appColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(blurRadius: 5.sp,color: Colors.white38),
                              ]
                          ),
                          child:DropdownButton(
                            hint: Text("90%...",style: TextStyle(color: Colors.white,),),
                            isExpanded: true,
                            icon: SvgPicture.asset("assets/images/drop_down.svg",color: Colors.white,),
                            underline: SizedBox(),
                            value: AGrade,
                            isDense: true,
                            onChanged: (newValue){
                              setState(() {
                                AGrade = newValue;
                              });
                            },
                            items: AGradeList.map((valueitem){
                              return DropdownMenuItem(
                                  value: valueitem,
                                  child:Text(valueitem,style: TextStyle(color: Colors.black),
                                  ) );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.h,),
                    Row(
                      children: [
                        Text("B Grade",style: TextStyle(color:Themes.setColor(context)?Colors.white: Colors.grey,fontFamily: "Nexa",fontWeight: FontWeight.bold),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 70.w,
                          height: 8.h,
                          margin: EdgeInsets.symmetric(horizontal: 3.w),
                          padding:EdgeInsets.symmetric(horizontal: 10), //EdgeInsets.symmetric(horizontal:Get.width>740?3.sp:5.sp,vertical:Get.width>740?3.sp:8.sp),
                          decoration: BoxDecoration(
                              color: appColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(blurRadius: 5.sp,color: Colors.white38),
                              ]
                          ),
                          child:DropdownButton(
                            hint: Text("70%...",style: TextStyle(color: Colors.white,),),
                            isExpanded: true,
                            icon: SvgPicture.asset("assets/images/drop_down.svg",color: Colors.white,),
                            underline: SizedBox(),
                            value: BPlus,
                            isDense: true,
                            onChanged: (newValue){
                              setState(() {
                                BPlus = newValue;
                              });
                            },
                            items: BPlursGradeList.map((valueitem){
                              return DropdownMenuItem(
                                  value: valueitem,
                                  child:Text(valueitem,style: TextStyle(color: Colors.black),
                                  ) );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.h,),
                    Row(
                      children: [
                        Text("C Grade",style: TextStyle(color:Themes.setColor(context)?Colors.white: Colors.grey,fontFamily: "Nexa",fontWeight: FontWeight.bold),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 70.w,
                          height: 8.h,
                          margin: EdgeInsets.symmetric(horizontal: 3.w),
                          padding:EdgeInsets.symmetric(horizontal: 10), //EdgeInsets.symmetric(horizontal:Get.width>740?3.sp:5.sp,vertical:Get.width>740?3.sp:8.sp),
                          decoration: BoxDecoration(
                              color: appColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(blurRadius: 5.sp,color: Colors.white38),
                              ]
                          ),
                          child:DropdownButton(
                            hint: Text("60%...",style: TextStyle(color: Colors.white,),),
                            isExpanded: true,
                            icon: SvgPicture.asset("assets/images/drop_down.svg",color: Colors.white,),
                            underline: SizedBox(),
                            value: CGrade,
                            isDense: true,
                            onChanged: (newValue){
                              setState(() {
                                CGrade = newValue;
                              });
                            },
                            items: CGradeList.map((valueitem){
                              return DropdownMenuItem(
                                  value: valueitem,
                                  child:Text(valueitem,style: TextStyle(color: Colors.black),
                                  ) );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.h,),
                    Row(
                      children: [
                        Text("F Grade",style: TextStyle(color:Themes.setColor(context)?Colors.white: Colors.grey,fontFamily: "Nexa",fontWeight: FontWeight.bold),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 70.w,
                          height: 8.h,
                          margin: EdgeInsets.symmetric(horizontal: 3.w),
                          padding:EdgeInsets.symmetric(horizontal: 10), //EdgeInsets.symmetric(horizontal:Get.width>740?3.sp:5.sp,vertical:Get.width>740?3.sp:8.sp),
                          decoration: BoxDecoration(
                              color: appColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(blurRadius: 5.sp,color: Colors.white38),
                              ]
                          ),
                          child:DropdownButton(
                            hint: Text("30%...",style: TextStyle(color: Colors.white,),),
                            isExpanded: true,
                            icon: SvgPicture.asset("assets/images/drop_down.svg",color: Colors.white,),
                            underline: SizedBox(),
                            value: FGrade,
                            isDense: true,
                            onChanged: (newValue){
                              setState(() {
                                FGrade = newValue;
                              });
                            },
                            items: FGradeList.map((valueitem){
                              return DropdownMenuItem(
                                  value: valueitem,
                                  child:Text(valueitem,style: TextStyle(color: Colors.black),
                                  ) );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),


                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6.h),
                      alignment: Alignment.center,
                      child: OutlinedButton(
                        onPressed: () {
                        },
                        child: const Text("Update Setting",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
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
  var APlus;
  var ANegative;
  var AGrade;
  var BPlus;
  var CGrade;
  var FGrade;
  final List APlusGradeList = ['95%',"90%",'85%','80%','70%','65%','60%'];
  final List ANegativeGradeList = ['90%','85%','80%','70%','65%','60%'];
  final List AGradeList = ['90%','85%','80%','70%','65%','60%','50%','40%','30%'];
  final List BPlursGradeList = ['90%','85%','80%','70%','65%','60%','50%','40%','30%'];
  final List CGradeList = ['90%','85%','80%','70%','65%','60%','50%','40%','30%'];
  final List FGradeList = ['90%','85%','80%','70%','65%','60%','50%','40%','30%','20%'];
}
