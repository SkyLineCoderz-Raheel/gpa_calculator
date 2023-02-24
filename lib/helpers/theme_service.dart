import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeServices {
  static final _getStorage = GetStorage();
 static final storageKey = 'isDarkMode';

  static ThemeMode getThemeMode() {
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

static  bool isSavedDarkMode() {
    return _getStorage.read(storageKey) ?? false;
  }

 static void saveThemeMode(bool isDarkMode) {
    _getStorage.write(storageKey, isDarkMode);
  }

static  void changeThemeMode() {
    Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemeMode(!isSavedDarkMode());
  }
 static void setDarkThemeMode(bool dark) {
    Get.changeThemeMode(dark ? ThemeMode.dark : ThemeMode.light);
    saveThemeMode(dark);
  }
}
