import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_loomi/core/app_widget.dart';
import 'package:flutter_loomi/core/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

void bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dio = Dio();
  final preferences = await SharedPreferences.getInstance();
  initInjection(dio, preferences);
  runApp(AppWidget());
}
