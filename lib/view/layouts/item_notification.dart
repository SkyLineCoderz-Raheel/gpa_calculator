import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../helpers/theme.dart';

class ItemNotification extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      margin: EdgeInsets.symmetric(vertical: 2.h),
      child: ListTile(
        leading: SvgPicture.asset("assets/images/reward.svg"),
        title: Text(
          "Welcome reward upto 50%", style: TextStyle(color:Themes.setColor(context)?Colors.white: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.bold, fontFamily: "Nexa"),),
        subtitle: Text("Get upto 50% discount on your first booking.",style: TextStyle(color: Colors.grey,fontSize: 10.sp,fontFamily: "Nexa"),),
        trailing: Icon(Icons.more_vert,color: Colors.grey,),
      ),
    );
  }
}
