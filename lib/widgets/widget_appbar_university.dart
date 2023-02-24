import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';

class WidgetAppbarUniversity extends StatelessWidget {
  const WidgetAppbarUniversity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:8.sp ),
      child: Row(children: [
        Padding(
          padding:  EdgeInsets.only(top: 3.sp),
          child: Icon(Icons.person_search_outlined),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 8.0),
          child: Icon(Icons.notifications_none),
        ),
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/profile.png"),

        )
      ],),
    );
  }
}
