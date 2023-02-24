import 'dart:io';

import 'package:custom_utils/custom_utils.dart';
import 'package:easy_gpa_calculator/view/screens/screen_pending_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../helpers/helper.dart';
import '../../helpers/theme.dart';
import '../../widgets/widget_appbar_university.dart';
import '../layouts/item_drawer_header.dart';

class ScreenRequestPortal extends StatefulWidget {
  const ScreenRequestPortal({Key? key}) : super(key: key);

  @override
  State<ScreenRequestPortal> createState() => _ScreenRequestPortalState();
}

class _ScreenRequestPortalState extends State<ScreenRequestPortal> {
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
                color:Themes.setColor(context)?Colors.black: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 3.w,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top:8.0),
                      child: Center(
                        child: Text(
                          "Request For University Portal",
                          style: TextStyle(color: Color(0xff707070), fontFamily: "Nexa", fontSize: 14.sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                        child: Text(
                          "Name",
                          style: TextStyle( fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                        )),
                    Container(
                      width: Get.width,
                      margin: EdgeInsets.symmetric(horizontal: 3.w),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide: BorderSide(width: 1, color:Themes.setColor(context)?Colors.white:appColor,)),
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
                            hintStyle: TextStyle(color:Themes.setColor(context)?Colors.white:appColor,),
                            // contentPadding: EdgeInsets.only(left: 12,bottom: 5),
                            fillColor:Themes.setColor(context)?Colors.black:Colors.white),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                        child: Text(
                          "University Name",
                          style: TextStyle(fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                        )),
                    Container(
                      width: Get.width,
                      margin: EdgeInsets.symmetric(horizontal: 3.w),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide: BorderSide(width: 1,color:Themes.setColor(context)?Colors.white:appColor,)),
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
                            hintText: "Gc university Faislabad layyah Campus",
                            hintStyle: TextStyle(color:Themes.setColor(context)?Colors.white:appColor,),
                            // contentPadding: EdgeInsets.only(left: 12,bottom: 5),
                            fillColor: Themes.setColor(context)?Colors.black:Colors.white),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                        child: Text(
                          "Portal Url",
                          style: TextStyle(fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                        )),
                    Container(
                      width: Get.width,
                      margin: EdgeInsets.symmetric(horizontal: 3.w),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide: BorderSide(width: 1, color:Themes.setColor(context)?Colors.white:appColor,)),
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
                            hintText: "url:faislabad.com",
                            hintStyle: TextStyle(color:Themes.setColor(context)?Colors.white:appColor,),
                            // contentPadding: EdgeInsets.only(left: 12,bottom: 5),
                            fillColor:Themes.setColor(context)?Colors.black:Colors.white),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                        child: Text(
                          "Add Logo",
                          style: TextStyle(fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                        )),
                    Center(
                      child: GestureDetector(
                        onTap: (){
                          getImageGallery();
                        },
                        child: Container(
                          height: 13.h,
                          width: 30.w,
                          child: _image !=null?Image.file(_image):Image.asset("assets/images/logo.png"),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 4.h),
                      alignment: Alignment.center,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(ScreenPendingRequest());
                        },
                        child: const Text("Submit Request",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
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
var _image;
  getImageGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
    // final imageT = File(image.path);
  }

}
