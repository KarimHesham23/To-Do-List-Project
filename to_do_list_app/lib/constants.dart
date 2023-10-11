import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_list_app/core/utils/get_locator.dart';

const kPrimaryColor = Color(0xff1A1A2F);
const kSpecialColor = Color(0xff7A12FF);
const kArvoFamily = "Arvo";
const kSecondaryColor = Color(0xff242443);
const kUserName = "user_name";
const knumberIcon = "user_icon";
String kName = getIt.get<SharedPreferences>().getString(kUserName) ?? "karim";
