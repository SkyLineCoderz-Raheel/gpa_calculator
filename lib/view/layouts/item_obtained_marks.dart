import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../helpers/helper.dart';
import '../../helpers/theme.dart';
import '../../widgets/drop_down_widget.dart';

class ItemObtainedMarks extends StatefulWidget {
  const ItemObtainedMarks({Key? key}) : super(key: key);

  @override
  _ItemObtainedMarksState createState() => _ItemObtainedMarksState();
}

class _ItemObtainedMarksState extends State<ItemObtainedMarks> {
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
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Text(
                    "Obtained Marks:",
                    style: TextStyle(fontFamily: "Nexa", fontSize: 12.sp),
                  ),
                  Container(
                    width: 40.w,
                    margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 1,
                                color: Themes.setColor(context) ? Colors.white : appColor,
                              )),
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
                          hintText: "80",
                          hintStyle: TextStyle(
                            color: Themes.setColor(context) ? Colors.white : Colors.black,
                          ),
                          // contentPadding: EdgeInsets.only(left: 12,bottom: 5),
                          fillColor: Themes.setColor(context) ? Colors.black : Colors.white),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Total Marks:",
                    style: TextStyle(fontFamily: "Nexa", fontSize: 12.sp),
                  ),
                  Container(
                    width: 40.w,
                    margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 1,
                                color: Themes.setColor(context) ? Colors.white : appColor,
                              )),
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
                          hintText: "80",
                          hintStyle: TextStyle(
                            color: Themes.setColor(context) ? Colors.white : Colors.black,
                          ),
                          // contentPadding: EdgeInsets.only(left: 12,bottom: 5),
                          fillColor: Themes.setColor(context) ? Colors.black : Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.h),
            child: Text(
              "Select Credit Hours ?",
              style: TextStyle(fontFamily: "Nexa", fontSize: 12.sp, fontWeight: FontWeight.bold),
            ),
          ),

          Container(
            alignment: Alignment.center,
            width: Get.width,
            height: 8.h,
            margin: EdgeInsets.symmetric(horizontal: 3.w),
            padding: EdgeInsets.symmetric(horizontal: 10),
            //EdgeInsets.symmetric(horizontal:Get.width>740?3.sp:5.sp,vertical:Get.width>740?3.sp:8.sp),
            decoration: BoxDecoration(color:Themes.setColor(context)?Colors.black:Colors.white, borderRadius: BorderRadius.circular(10), border: Border.all(color:Themes.setColor(context)?Colors.white:appColor,), boxShadow: [
              BoxShadow(blurRadius: 5.sp, color: Colors.white38),
            ]),
            child: DropdownButton(
              hint: Text("5",style: TextStyle(color:Themes.setColor(context)?Colors.white:appColor,),),
              isExpanded: true,
              icon: SvgPicture.asset("assets/images/drop_down.svg",color:Themes.setColor(context)?Colors.white:appColor,),
              underline: SizedBox(),
              value: valueChoose,
              isDense: true,
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue;
                });
              },
              items: Hours.map((valueitem) {
                return DropdownMenuItem(
                    value: valueitem,
                    child: Text(
                      valueitem,
                      style: TextStyle(color:Themes.setColor(context)?Colors.white:appColor,),
                    ));
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  final List Hours = ['1', '2', '3', '4', '5'];
  var valueChoose;
}
