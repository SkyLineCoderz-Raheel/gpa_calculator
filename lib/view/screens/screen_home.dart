import 'package:custom_utils/custom_utils.dart';
import 'package:easy_gpa_calculator/helpers/theme.dart';
import 'package:easy_gpa_calculator/view/screens/screen_calculate_easy.dart';
import 'package:easy_gpa_calculator/view/screens/screen_calculate_easy_cgpa.dart';
import 'package:easy_gpa_calculator/view/screens/screen_universty_portal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../helpers/helper.dart';
import '../../widgets/first_home.dart';
import '../../widgets/widget_app_bar.dart';
import '../layouts/item_drawer_header.dart';

class ScreenHome extends StatefulWidget {

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
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
                    decoration: BoxDecoration(
                        color: Themes.setColor(context) ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
                    ),
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                            child: Text("Calculate GPA - CGPA", style: TextStyle(color:Themes.setColor(context) ? Colors.white: Color(0xff707070),
                                fontFamily: "Nexa",
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400),)),
                        _CustomListile("Calculate", "Calculate your GPA easily", () {
                          Get.to(ScreenCalculateEasy());
                        }),
                        _CustomListile("Calculate", "Calculate your C-GPA", () {
                          Get.to(ScreenCalculateEasyCgpa());
                        }),
                        _CustomListile("Portals", "Univetsties Portals", () {
                          Get.to(ScreenUniverstyPortal());
                        }),

                      ],
                    ),
                  )),
            ],
          ),
        )
    );
  }

}

Widget _CustomListile(String text, title, VoidCallback? ontap) {
  return ListTile(
    onTap: ontap,
    leading: Icon(Icons.circle, color: appColor,size: 12.sp,),
    title: Text(title, maxLines: 1, style: TextStyle(fontFamily: "sofia_pro", fontSize: 12.sp,),),
    subtitle: Text("Tap to calculate", style: TextStyle(color: Color(0xff616161), fontSize: 10.sp, fontFamily: "sofia_pro"),),
    trailing: Container(
      alignment: Alignment.center,
      height: 4.h,
      width: 24.w,
      // padding: EdgeInsets.symmetric(horizontal: 22.sp,vertical: 6.sp),
      decoration: BoxDecoration(
          color: appColor,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 10.sp, fontFamily: "sofia_pro"),),
    ),
  );
}