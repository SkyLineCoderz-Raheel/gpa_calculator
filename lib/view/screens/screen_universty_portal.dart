import 'package:custom_utils/custom_utils.dart';
import 'package:easy_gpa_calculator/view/screens/screen_request_portal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../helpers/helper.dart';
import '../../helpers/theme.dart';
import '../../widgets/widget_appbar_university.dart';
import '../layouts/item_drawer_header.dart';
import '../layouts/item_university.dart';

class
ScreenUniverstyPortal extends StatelessWidget {
  const ScreenUniverstyPortal({Key ? key}) : super(key: key);

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
                color: Themes.setColor(context)?Colors.black:Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 3.w,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "universty Poratal",
                            style: TextStyle(color:Themes.setColor(context)?Colors.white:Color(0xff707070), fontFamily: "Nexa", fontSize: 12.sp, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Request for Portal? ",
                            style: TextStyle(color:Themes.setColor(context)?Colors.white:appColor, fontFamily: "Nexa", fontSize: 12.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(ScreenRequestPortal());
                      },
                      child: ListView.builder(
                        physics:ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                        return ItemUniversity();
                      },),
                    ),

                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
