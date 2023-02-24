import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/helper.dart';
import '../../helpers/theme.dart';

class ItemGrade extends StatefulWidget {
  @override
  State<ItemGrade> createState() => _ItemGradeState();
}

class _ItemGradeState extends State<ItemGrade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 4.h),
      height: 40.h,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.h),
            child: Text(
              "Subject 1",
              style: TextStyle(fontFamily: "Nexa", fontSize: 12.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Selecct your Grade:",
                style: TextStyle(fontFamily: "Nexa", fontSize: 12.sp),
              )),
          Container(
            alignment: Alignment.center,
            width: Get.width,
            height: 8.h,
            margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
            padding: EdgeInsets.symmetric(horizontal: 10),
            //EdgeInsets.symmetric(horizontal:Get.width>740?3.sp:5.sp,vertical:Get.width>740?3.sp:8.sp),
            decoration: BoxDecoration(
                color: Themes.setColor(context) ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Themes.setColor(context) ? Colors.white : appColor),
                boxShadow: [
                  BoxShadow(blurRadius: 5.sp, color: Colors.white38),
                ]),
            child: DropdownButton(
              hint: Text(
                "A+Grade...",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              isExpanded: true,
              icon: SvgPicture.asset("assets/images/drop_down.svg", color: Themes.setColor(context) ? Colors.white : appColor),
              underline: SizedBox(),
              value: choosegrade,
              isDense: true,
              onChanged: (newValue) {
                setState(() {
                  choosegrade = newValue;
                });
              },
              items: grade.map((valueitem) {
                return DropdownMenuItem(
                    value: valueitem,
                    child: Text(
                      valueitem,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ));
              }).toList(),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 3.h),
              child: Text(
                "Select Credit Hours ?",
                style: TextStyle(fontFamily: "Nexa", fontSize: 12.sp, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: Get.width,
            height: 8.h,
            margin: EdgeInsets.symmetric(
              horizontal: 3.w,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            //EdgeInsets.symmetric(horizontal:Get.width>740?3.sp:5.sp,vertical:Get.width>740?3.sp:8.sp),
            decoration: BoxDecoration(color:Themes.setColor(context)?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10), border: Border.all(color:Themes.setColor(context)?Colors.white: appColor), boxShadow: [
              BoxShadow(blurRadius: 5.sp, color: Colors.white38),
            ]),
            child: DropdownButton(
              hint: Text(
                " 5 Credit Hours...",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              isExpanded: true,
              icon: SvgPicture.asset("assets/images/drop_down.svg",color: Themes.setColor(context)?Colors.white:appColor,),
              underline: SizedBox(),
              value: choosehour,
              isDense: true,
              onChanged: (newValue) {
                setState(() {
                  choosehour = newValue;
                });
              },
              items: hours.map((valueitem) {
                return DropdownMenuItem(
                    value: valueitem,
                    child: Text(
                      valueitem,
                      style: TextStyle(color: appColor),
                    ));
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  var choosegrade;
  var choosehour;
  final List grade = ['A+Grade', 'B Grade', 'C Grade', 'D Grade', 'F'];
  final List hours = ['1', '2', '3', '4', '5'];
}
