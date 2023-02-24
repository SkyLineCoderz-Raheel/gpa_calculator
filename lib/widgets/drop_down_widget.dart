import 'package:custom_utils/custom_utils.dart';
import 'package:easy_gpa_calculator/controllers/gpa_contoller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';


import '../helpers/helper.dart';
class DropDownMenu1 extends StatefulWidget {
  final String hintText;
  List itemlist;



  DropDownMenu1({required this.hintText,required this.itemlist
  });


  @override
  State<DropDownMenu1> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu1> {
  var valueChoose;

  @override
  Widget build(BuildContext context) {

    return Container(
     alignment: Alignment.center,
     width: Get.width,
     height: 8.h,
    margin: EdgeInsets.symmetric(horizontal: 3.w),
    padding:EdgeInsets.symmetric(horizontal: 10), //EdgeInsets.symmetric(horizontal:Get.width>740?3.sp:5.sp,vertical:Get.width>740?3.sp:8.sp),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color:appColor),
          boxShadow: [
            BoxShadow(blurRadius: 5.sp,color: Colors.white38),
          ]
      ),
      child:DropdownButton(
        hint: Text("${widget.hintText}...",style: TextStyle(color: appColor,),),
        isExpanded: true,
        icon: SvgPicture.asset("assets/images/drop_down.svg"),
        underline: SizedBox(),
        value: valueChoose,
        isDense: true,
        onChanged: (newValue){
          setState(() {
            valueChoose = newValue;
          });
        },
        items: widget.itemlist.map((valueitem){
          return DropdownMenuItem(
            value: valueitem,
            child:Text(valueitem,style: TextStyle(color: appColor),
            ) );
        }).toList(),
      ),
    );
  }
}
