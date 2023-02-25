import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/grade.dart';
import '../model/history.dart';


class RegistrationController extends GetxController {
  Rx<TextEditingController> Ag=TextEditingController().obs;
  Rx<TextEditingController> Bg=TextEditingController().obs;
  Rx<TextEditingController> Cg=TextEditingController().obs;
  Rx<TextEditingController> Dg=TextEditingController().obs;

  late int A;
  late int B;
  late int C;
  late int D;
  Future<void> getValue() async {
    SharedPreferences pref= await SharedPreferences.getInstance();
    A= pref.getInt("a") ?? 80;
    B= pref.getInt("b") ?? 60;
    C= pref.getInt("c") ?? 40;
    D= pref.getInt("d") ?? 20;
  }

  RxString dbName = 'History'.obs;
  RxString dbgName = 'Grade'.obs;

  RxList _history = [].obs;
  RxList _grade = [].obs;
  RxList tMarks = [].obs;
  RxList oMarks = [].obs;
  RxDouble totalPercent = 0.0.obs;
  List percent =[];
  RxString title = "".obs;
  Rx<DateTime> checkDate = DateTime.now().obs;
  RxString status = "".obs;
  var grades = {
    "gradeA":80,
    "gradeB":60,
    "gradeC":40,
    "gradeD":20,
  }.obs;
  var result = 0.0.obs;
  RxList creditList = [].obs;
  var credit1 = 4.obs;
  var credit2 = 4.obs;
  var credit3 = 4.obs;
  var credit4 = 4.obs;
  var credit5 = 4.obs;
  var credit6 = 4.obs;
  var credit7 = 4.obs;
  var credit8 = 4.obs;
  var nameController  = TextEditingController().obs;
  var renameController =   TextEditingController().obs;
  var subjectsController = TextEditingController().obs;
  var uniNameController =  TextEditingController().obs;
  var portalController =   TextEditingController().obs;
  var passSemController =  TextEditingController().obs;
  var firstSemController  = TextEditingController().obs;
  var secondSemController = TextEditingController().obs;
  var thirdSemController  = TextEditingController().obs;
  var fourthSemController = TextEditingController().obs;
  var fifthSemController  = TextEditingController().obs;
  var sixthSemController  = TextEditingController().obs;
  var seventhSemController = TextEditingController().obs;
  var eighthSemController = TextEditingController().obs;
  var ninethSemController = TextEditingController().obs;
  var tenthSemController = TextEditingController().obs;

  var sub1TotlMksController = TextEditingController().obs;
  var sub2TotlMksController = TextEditingController().obs;
  var sub3TotlMksController = TextEditingController().obs;
  var sub4TotlMksController = TextEditingController().obs;
  var sub5TotlMksController = TextEditingController().obs;
  var sub6TotlMksController = TextEditingController().obs;
  var sub7TotlMksController = TextEditingController().obs;
  var sub8TotlMksController = TextEditingController().obs;
  var sub1obtMksController =  TextEditingController().obs;
  var sub2obtMksController =  TextEditingController().obs;
  var sub3obtMksController =  TextEditingController().obs;
  var sub4obtMksController =  TextEditingController().obs;
  var sub5obtMksController =  TextEditingController().obs;
  var sub6obtMksController =  TextEditingController().obs;
  var sub7obtMksController =  TextEditingController().obs;
  var sub8obtMksController =  TextEditingController().obs;

  Future<String?> nameValidate(String value) async {

    final validChar = RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");

    if(value.length < 5){
      return "Name is too short";
    }
    else if(value.contains(" ")){
      return "spaces not allowed";
    }
    else if(!validChar.hasMatch(value)){
      return "Invalid name";
    }
    else if(value.length > 15){
      return "name is too long";
    }
    return null;
  }
  void cleanForm() {
    nameController.value.clear();
    subjectsController.value.clear();
    passSemController.value.clear();
  }

  void addHistory(History history) {
    final historyBox = Hive.box(dbName.value);
    historyBox.add(history);
    cleanForm();
  }

  getHistoryByIndex(int index) {
    final historyBox = Hive.box(dbName.value);
    return historyBox.getAt(index) as History;
  }

  deleteHistoryByIndex(int index) {
    final historyBox = Hive.box(dbName.value);
    historyBox.deleteAt(index);
  }

  // updateHistoryByIndex(int index, History history) {
  //   final historyBox = Hive.box(dbName.value);
  //   historyBox.putAt(index, history);
  // }

  Future getHistory() async {
    Box hBox;
    // Getting contacts
    try {
      hBox = Hive.box(dbName.value);
    } catch (error) {
      hBox = await Hive.openBox(dbName.value);
      print(error);
    }

    var HistoryallProducts = hBox.get(dbName.value);
    if (HistoryallProducts != null) _history.value = HistoryallProducts;
  }



  void addGrade(Grade grade) {
    final gradeBox = Hive.box(dbgName.value);
    gradeBox.add(grade);
    // cleanForm();
  }

  getGradeByIndex(int index) {
    final gradeBox = Hive.box(dbgName.value);
    return gradeBox.getAt(index) as Grade;
  }

  deleteGradeByIndex(int index) {
    final gradeBox = Hive.box(dbgName.value);
    gradeBox.deleteAt(index);
  }

  updateGradeByIndex(int index,Grade grade) {
    final gradeBox = Hive.box(dbgName.value);
    gradeBox.putAt(index, grade);
  }

  Future getGrade() async {
    Box gBox;
    // Getting contacts
    try {
      gBox = Hive.box(dbgName.value);
    } catch (error) {
      gBox = await Hive.openBox(dbgName.value);
      print(error);
    }

    var GradeAll = gBox.get(dbgName.value);
    if (GradeAll != null) _grade.value = GradeAll;
  }
  double getpercenT(int obt,int tol){
    var res=0.0;
    res= obt/tol*100;
    return res;
  }

  Future<String> getG(double percent) async {
    SharedPreferences pref =await SharedPreferences.getInstance();
    double a =await double.parse(pref.getInt('a').toString());
    double b =await double.parse(pref.getInt('b').toString());
    double c =await double.parse(pref.getInt('c').toString());
    double d =await double.parse(pref.getInt('d').toString());
    String grad;
    if (percent>a) {
      grad ='A';
      return grad;
    }
    else if (percent>b) {
      grad = 'B';
      return grad;
    }
    else if (percent>c) {
      grad='C';
      return grad;
    }
    else if (percent>d) {
      grad ='D';
      return grad;
    }
    else {
      grad ='F';
      return grad;
    }
  }
}