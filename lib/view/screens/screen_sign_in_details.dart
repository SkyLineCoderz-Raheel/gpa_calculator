import 'dart:ui';

import 'package:custom_utils/custom_utils.dart';
import 'package:easy_gpa_calculator/view/screens/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ScreenSignInDetails extends StatefulWidget {
  @override
  _ScreenSignInDetailsState createState() => _ScreenSignInDetailsState();
}

class _ScreenSignInDetailsState extends State<ScreenSignInDetails> {
  bool _visibility = true;
  bool _visibilit = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 3.w,
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.h),
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.black, fontSize: 16.sp, fontFamily: "Nexa", fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Sign Up awesome trips and holiday packages and also get ultimate discount on your first trip booking.",
                        style: TextStyle(color: Color(0xff838383), fontFamily: "poppines", fontSize: 12.sp),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 2.h),
                          child: Text(
                            "Email:",
                            style: TextStyle(color: Colors.black, fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                          )),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 3.w),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              if (value != null || value != '') {
                                _visibilit = false;
                              }
                              if (value == null || value == '') {
                                _visibilit = true;
                              }
                            });
                          },
                          decoration: InputDecoration(
                              suffixIcon: _visibilit == false
                                  ? Icon(
                                      Icons.check_circle_sharp,
                                      color: Color(0xff27AE60),
                                    )
                                  : SizedBox(),
                              focusColor: Colors.red,
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
                              hintText: "Enter Your Email*...",
                              // contentPadding: EdgeInsets.only(left: 12,bottom: 5),
                              fillColor: Color(0xffF5F8FD)),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 2.h),
                          child: Text(
                            "Password:",
                            style: TextStyle(color: Colors.black, fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                          )),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 3.w),
                        child: TextField(
                          obscureText: _visibility,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _visibility = !_visibility;
                                  });
                                },
                                icon: Icon(
                                  // Based on passwordVisible state choose the icon
                                  _visibility ? Icons.visibility : Icons.visibility_off,
                                ),
                                color: Color(0xff838383),
                              ),
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
                              hintText: "Enter Your password*...",
                              // contentPadding: EdgeInsets.only(left: 12,bottom: 5),
                              fillColor: Color(0xffF5F8FD)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2.sp),
                        alignment: Alignment.topRight,
                          child: Text("Forget Password",style: TextStyle(color:Color(0xff2ABAFF),fontSize: 12.sp,fontFamily: "poppines"),)),

                      SizedBox(
                        height: 6.h,
                      ),
                      Center(
                        child: OutlinedButton(
                          onPressed: () {
                            Get.to(ScreenHome());
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          style: OutlinedButton.styleFrom(
                              fixedSize: Size(80.w, 7.h),
                              side: BorderSide(width: 1.5, color: Colors.white),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              primary: Colors.black,
                              backgroundColor:Color(0xff2ABAFF),
                              //  padding: const EdgeInsets.all(25)),
                              ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Center(
                        child: Image.asset(
                          "assets/images/signup.png",
                          width: 60.w,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset("assets/images/fb.svg"),
                          SvgPicture.asset("assets/images/fb.svg"),
                          SvgPicture.asset("assets/images/ap.svg"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                  child:Text("Create a new account : Sign In",
                    style: TextStyle(color: Colors.black, fontFamily: "Nexa", fontWeight: FontWeight.bold, fontSize: 12.sp),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
