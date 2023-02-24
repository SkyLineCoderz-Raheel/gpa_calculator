import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../helpers/helper.dart';
import '../../helpers/theme.dart';

class ItemUniversity extends StatelessWidget {
  const ItemUniversity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Themes.setColor(context)?Colors.black: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 2.h),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(Icons.circle,color: Color(0xff6BB8FF),size: 12.sp,),
          SizedBox(width: 2.w,),
          Image.asset("assets/images/logo.png",width: 10.w,height: 8.h,),
          SizedBox(width:6.w),
          Container(
            height: 8.h,
            width: 70.w,
            padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
            decoration: BoxDecoration(
                color:Themes.setColor(context)?Colors.black: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color:appColor),
                boxShadow: [
                  BoxShadow(blurRadius: 5.sp,color: Colors.white38),
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Govermant College",style: TextStyle(fontFamily: "Nexa",fontSize: 13.sp),),
                    SizedBox(height: 3.sp,),
                    Text("University Faisalabad",style: TextStyle(color: Colors.grey,fontSize: 10.sp,fontFamily: "Nexa"),),
                  ],
                ),
                SizedBox(width: 4.w,),
                Text("Portal",style: TextStyle(color:Themes.setColor(context)?Colors.white: appColor,fontSize: 10.sp,fontFamily: "Nexa"),),
                Icon(Icons.navigate_next_outlined,color:Themes.setColor(context)?Colors.white: appColor,)
              ],
            )
          )

        ],
      ),
    );
  }
}
