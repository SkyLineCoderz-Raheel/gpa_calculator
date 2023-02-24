import 'package:custom_utils/custom_utils.dart';
import 'package:easy_gpa_calculator/view/screens/sign_up_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class ScreenSignUp extends StatefulWidget {
  @override
  State<ScreenSignUp> createState() => _ScreenSignUpState();
}

class _ScreenSignUpState extends State<ScreenSignUp> {
  bool _visibility = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 3.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 2.h),
                  child: Text(
                    "SignUp",
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
                      "Name:",
                      style: TextStyle(color: Colors.black, fontSize: 10.sp, fontFamily: "poppines", fontWeight: FontWeight.bold),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 3.w),
                  child: TextField(
                    decoration: InputDecoration(
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
                        hintText: "Enter Your Name*...",
                        // contentPadding: EdgeInsets.only(left: 12,bottom: 5),
                        fillColor: Color(0xffF5F8FD)),
                  ),
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
                    decoration: InputDecoration(
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
                            setState((){
                              _visibility = !_visibility;
                            });
                          },
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _visibility
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          color:Color(0xff838383),
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
                SizedBox(height: 6.h,),
                Center(
                  child: OutlinedButton(
                    onPressed: () {
                      Get.to(SignUpDetails());
                    },
                    child: const Text("Signup",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(80.w, 7.h),
                      side: BorderSide(width: 1.5, color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),


                      ),

                      primary: Colors.black,
                      backgroundColor: Color(0xffCBD3DC),
                      //  padding: const EdgeInsets.all(25)),
                    ),
                  ),
                ),
                SizedBox(height: 3.h,),
                Center(
                  child: Image.asset("assets/images/signup.png",width: 60.w,),
                ),
                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/goo.png",),
                    SvgPicture.asset("assets/images/fb.svg"),
                    SvgPicture.asset("assets/images/ap.svg"),
                  ],
                ),
                SizedBox(height: 2.h,),
                Center(child: Text("Already have an account : Sign In",style: TextStyle(color: Colors.black,fontFamily: "Nexa",fontWeight: FontWeight.bold,fontSize: 12.sp),)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
