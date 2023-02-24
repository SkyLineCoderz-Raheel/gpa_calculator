import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../helpers/helper.dart';

class FirstHome extends StatelessWidget {
  const FirstHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appColor,
      padding: EdgeInsets.symmetric(horizontal: 10.sp),
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recently",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontFamily: "Nexa",fontWeight: FontWeight.bold),),
              Container(
                height: 5.h,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),
                child:Row(
                  children: [
                    Image.asset("assets/images/Calendar.png"),
                    SizedBox(width: 2.w,),
                    Text("12/12/2023",style: TextStyle(color:appColor),)
                  ],
                ) ,
              )
            ],
          ),
          SizedBox(height: 6.h,),
          BalloonSlider(
              value: 0.5,
              ropeLength: 30,
              showRope: true,
              onChangeStart: (val) {},
              onChanged: (val) {},
              onChangeEnd: (val) {},
              color: Colors.indigo
          ),
          Padding(
            padding:  EdgeInsets.only(top: 1.h),
            child: Text("Recent calculated GPA",style: TextStyle(color: Colors.white,fontFamily: "sofia_pro"),),
          )

        ],
      ),
    );
  }
}
