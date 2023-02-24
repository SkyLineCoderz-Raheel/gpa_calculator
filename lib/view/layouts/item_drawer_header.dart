import 'package:custom_utils/custom_utils.dart';
import 'package:easy_gpa_calculator/helpers/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../helpers/helper.dart';
import '../../helpers/theme.dart';
import '../screens/screen_calculate_easy.dart';
import '../screens/screen_calculate_easy_cgpa.dart';
import '../screens/screen_request_portal.dart';
import '../screens/screen_universty_portal.dart';
import '../screens/screen_update_setting.dart';

class ItemDrawerHeader extends StatefulWidget {

  @override
  State<ItemDrawerHeader> createState() => _ItemDrawerHeaderState();
}

class _ItemDrawerHeaderState extends State<ItemDrawerHeader> {
  ThemeData lightTheme = ThemeData(brightness: Brightness.light);
  ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SwitchListTile(
            activeColor: appColor,
            title: Text(_value == false?"Dark Mode":"Light Mode",style: TextStyle(fontFamily: "Nexa",fontWeight: FontWeight.bold,fontSize: 12.sp),),
              value: _value, onChanged: (value){
              ThemeServices.changeThemeMode();
              setState((){
                _value = value;
              });

          }),
          UserAccountsDrawerHeader( // <-- SEE HERE
              decoration: BoxDecoration(color:  Themes.setColor(context) ? Color(0xff353535).withOpacity(.10) :Colors.white,),
              accountName: Text(
                "Pinkesh Darji",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "pinkesh.earth@gmail.com",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.png"),
              )),
          ListTile(

            title:  Text('Calculate your GPA easily',style: TextStyle(fontFamily: "sofia_pro"),),
            subtitle: Text("Tap to Calculate",style: TextStyle(color: Colors.grey,fontFamily: "Nexa"),),
            trailing: Icon(Icons.navigate_next,color: appColor,),
            onTap: () {
              Get.to(ScreenCalculateEasy());
            },
          ),
          Divider(
            height: 2,
            color: Colors.grey,
          ),
          ListTile(

            title:  Text('Calculate your C-GPA',style: TextStyle(fontFamily: "sofia_pro"),),
            subtitle: Text("Tap to Calculate",style: TextStyle(color: Colors.grey,fontFamily: "Nexa"),),
            trailing: Icon(Icons.navigate_next,color: appColor,),
            onTap: (){
              Get.to(ScreenCalculateEasyCgpa());
            },
          ),
          Divider(
            height: 2,
            color: Colors.grey,
          ),
          ListTile(

            title:  Text('Universities Portals',style: TextStyle(fontFamily: "sofia_pro"),),
            subtitle: Text("Tap to Calculate",style: TextStyle(color: Colors.grey,fontFamily: "Nexa"),),
            trailing: Icon(Icons.navigate_next,color: appColor,),
            onTap: () {
              Get.to(ScreenUniverstyPortal());
            },
          ),
          Divider(
            height: 2,
            color: Colors.grey,
          ),
          ListTile(

            title:  Text('Request for your Portal',style: TextStyle(fontFamily: "sofia_pro"),),
            subtitle: Text("Tap to Calculate",style: TextStyle(color: Colors.grey,fontFamily: "Nexa"),),
            trailing: Icon(Icons.navigate_next,color: appColor,),
            onTap: () {
            Get.to(ScreenUniverstyPortal());
            },
          ),
          Divider(
            height: 2,
            color: Colors.grey,
          ),
          ListTile(

            title:  Text('Setting',style: TextStyle(fontFamily: "sofia_pro"),),
            subtitle: Text("Tap to Calculate",style: TextStyle(color: Colors.grey,fontFamily: "Nexa"),),
            trailing: Icon(Icons.navigate_next,color: appColor,),
            onTap: () {
              Get.to(ScreenUpdateSetting());
            },
          ),
          Divider(
            height: 2,
            color: Colors.grey,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: 2.h,horizontal: 3.w),
              child: Text("Help @ info",style: TextStyle(fontFamily: "sofia_pro",fontSize: 16.sp,fontWeight: FontWeight.bold),),
            ),
          ),

          ListTile(
            leading: SvgPicture.asset("assets/images/about.svg",height: 14.sp,color:Themes.setColor(context)?Colors.white:Colors.black,),
            title:  Text('About us',style: TextStyle(fontSize:14 .sp,fontFamily: "sofia_pro"),),
            onTap: () {
            },
          ),
          ListTile(
            leading: SvgPicture.asset("assets/images/contact.svg",height: 14.sp,color:Themes.setColor(context)?Colors.white:Colors.black,),
            title:  Text('Contact us',style: TextStyle(fontSize:14 .sp,fontFamily: "sofia_pro"),),
            onTap: () {
            },
          ),
          ListTile(
            leading: SvgPicture.asset("assets/images/term.svg",height: 14.sp,color:Themes.setColor(context)?Colors.white:Colors.black,),
            title:  Text('Term and Conditions',style: TextStyle(fontSize:14 .sp,fontFamily: "sofia_pro"),),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.circle_outlined,color:Themes.setColor(context)?Colors.white:Colors.black,),
            title:  Text('FAQ',style: TextStyle(fontSize:14 .sp,fontFamily: "sofia_pro"),),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
