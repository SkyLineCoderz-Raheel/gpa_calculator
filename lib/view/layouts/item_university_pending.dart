import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/helper.dart';
import '../../helpers/theme.dart';

class ItemUniversityPending extends StatelessWidget {
  const ItemUniversityPending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Themes.setColor(context)?Colors.black:Colors.white,
      margin: EdgeInsets.symmetric(vertical: 2.h),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(Icons.circle,color: Color(0xff6BB8FF),size: 12.sp,),
          SizedBox(width: 6.w,),
          Container(
              height: 8.h,
              width: 80.w,
              padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
              decoration: BoxDecoration(
                  color:Themes.setColor(context)?Colors.black:Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color:Themes.setColor(context)?Colors.white:appColor,),
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
                  Text("Pending",style: TextStyle(color:Themes.setColor(context)?Colors.white:appColor,fontSize: 10.sp,fontFamily: "Nexa"),),
                ],
              )
          )

        ],
      ),
    );
  }
}
